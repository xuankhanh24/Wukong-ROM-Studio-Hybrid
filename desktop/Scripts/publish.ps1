[CmdletBinding()]
param(
    [string]$Configuration = 'Release',
    [string]$StagingRoot = '',
    [switch]$IncludeBaseContent,
    [switch]$BuildInstaller,
    [switch]$SkipTests
)

$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest
$scriptRoot = if ($PSScriptRoot) { $PSScriptRoot } else { Split-Path -Parent $MyInvocation.MyCommand.Path }
$desktopRoot = (Resolve-Path (Join-Path $scriptRoot '..')).Path
$sourceRoot = (Resolve-Path (Join-Path $desktopRoot '..')).Path
$StagingRoot = if ([string]::IsNullOrWhiteSpace($StagingRoot)) {
    Join-Path $desktopRoot 'artifacts\staging\WukongROMStudio'
} else {
    $StagingRoot
}
$staging = [IO.Path]::GetFullPath($StagingRoot)
$publishRoot = Join-Path $desktopRoot 'artifacts\publish\win-x64'

if (-not $SkipTests) {
    & python -m compileall -q `
        (Join-Path $sourceRoot 'studio_core.py') `
        (Join-Path $sourceRoot 'studio_server.py') `
        (Join-Path $sourceRoot 'studio_worker.py') `
        (Join-Path $sourceRoot 'studio_packager.py') `
        (Join-Path $sourceRoot 'img_tool.py') `
        (Join-Path $sourceRoot 'batch_unpack.py') `
        (Join-Path $sourceRoot 'batch_repack.py') `
        (Join-Path $sourceRoot 'super_tool.py') `
        (Join-Path $sourceRoot 'partition_config.py') `
        (Join-Path $sourceRoot 'wukong') `
        (Join-Path $sourceRoot 'tests')
    if ($LASTEXITCODE -ne 0) {
        throw 'Python compile gate failed.'
    }

    Push-Location $sourceRoot
    try {
        & python -m unittest -q `
            tests.test_studio_core `
            tests.test_studio_env `
            tests.test_studio_paths `
            tests.test_studio_server `
            tests.test_telegram_progress `
            tests.test_uploader `
            tests.test_wk_manager_patcher `
            tests.test_wk_manager_features `
            tests.test_wk_manager_module_layout `
            tests.test_wk_manager_force_policy `
            tests.test_stark_archive `
            tests.test_patch_toolchain `
            tests.test_command_logging `
            tests.test_smali_io `
            tests.test_smali_assembly `
            tests.test_keystore_request_binding `
            tests.test_patch_execution `
            tests.test_installer_stark `
            tests.test_mod_features `
            tests.test_launcher_profiles `
            tests.test_stark_payload_gate `
            tests.test_github_content `
            tests.test_content_sync `
            tests.test_sync_platform_content_cli `
            tests.test_wukong_hybrid
        if ($LASTEXITCODE -ne 0) {
            throw 'Python test gate failed.'
        }
        & dotnet test (Join-Path $desktopRoot 'WukongStudio.sln') -c $Configuration --no-restore
        if ($LASTEXITCODE -ne 0) {
            throw '.NET test gate failed.'
        }
    }
    finally {
        Pop-Location
    }
}

& (Join-Path $scriptRoot 'build-runtime.ps1') `
    -DestinationRoot $staging `
    -SourceRoot $sourceRoot `
    -IncludeBaseContent:$IncludeBaseContent `
    -Clean

if (Test-Path -LiteralPath $publishRoot) {
    Remove-Item -LiteralPath $publishRoot -Recurse -Force
}

dotnet publish (Join-Path $desktopRoot 'WukongStudio.App\WukongStudio.App.csproj') `
    -c $Configuration `
    -r win-x64 `
    --self-contained true `
    -o $publishRoot
if ($LASTEXITCODE -ne 0) {
    throw 'WinUI publish failed.'
}
Copy-Item -Path (Join-Path $publishRoot '*') -Destination (Join-Path $staging 'App') -Recurse -Force

& (Join-Path $scriptRoot 'verify-stark-payload.ps1') -SourceRoot $sourceRoot -StagingRoot $staging

# A stale branch catalog must not download a Drive snapshot over shared STARK.
$packCatalog = Get-Content -LiteralPath (Join-Path $staging 'Runtime/Scripts/content-packs/index.json') -Raw | ConvertFrom-Json
$releaseModPacks = @($packCatalog.packs | Where-Object { $_.id -like 'MOD/*' })
if ($releaseModPacks.Count -eq 0 -or @($releaseModPacks | Where-Object {
    $_.archive.uri -notlike 'https://github.com/*/releases/download/*'
}).Count -gt 0) {
    throw 'Installer catalog is stale. Use the published main GitHub Release catalog, not legacy Drive MOD entries.'
}
$starkCatalogPacks = @($packCatalog.packs | Where-Object { $_.id -eq 'STARK/common' })
if ($starkCatalogPacks.Count -ne 1) { throw 'Shared STARK catalog entry is missing.' }
$starkSourceProperty = $starkCatalogPacks[0].PSObject.Properties['source']
if ($null -eq $starkSourceProperty -or $starkSourceProperty.Value -ne 'git') {
    throw 'Installer catalog must mark STARK/common as Git-owned; remote STARK overlays are not allowed.'
}
foreach ($basePack in @($packCatalog.packs | Where-Object { $_.id -notlike 'MOD/*' })) {
    if ($basePack.source -ne 'git' -or $null -ne $basePack.PSObject.Properties['archive']) {
        throw "Base content must be Git-owned, not downloaded: $($basePack.id)"
    }
    if (-not (Test-Path -LiteralPath (Join-Path $staging "Content/$($basePack.target)"))) {
        throw "Git-owned base content is missing from installer: $($basePack.target)"
    }
}

$manifestFiles = Get-ChildItem -LiteralPath $staging -Recurse -File |
    Where-Object { $_.Name -ne 'release-manifest.json' } |
    ForEach-Object {
        [ordered]@{
            path = $_.FullName.Substring($staging.TrimEnd('\').Length).TrimStart('\').Replace('\', '/')
            size = $_.Length
            sha256 = (Get-FileHash -LiteralPath $_.FullName -Algorithm SHA256).Hash.ToLowerInvariant()
        }
    }
$releaseManifest = [ordered]@{
    schemaVersion = 1
    generatedAtUtc = [DateTime]::UtcNow.ToString('o')
    files = @($manifestFiles)
}
$releaseManifest | ConvertTo-Json -Depth 5 |
    Set-Content -LiteralPath (Join-Path $staging 'release-manifest.json') -Encoding UTF8

if ($BuildInstaller) {
    $iscc = Get-Command ISCC.exe -ErrorAction SilentlyContinue
    if (-not $iscc) {
        $defaultIscc = Join-Path ${env:ProgramFiles(x86)} 'Inno Setup 6\ISCC.exe'
        if (Test-Path -LiteralPath $defaultIscc) {
            $iscc = Get-Item $defaultIscc
        }
    }
    if (-not $iscc) {
        $userIscc = Join-Path $env:LOCALAPPDATA 'Programs\Inno Setup 6\ISCC.exe'
        if (Test-Path -LiteralPath $userIscc) {
            $iscc = Get-Item $userIscc
        }
    }
    if (-not $iscc) {
        throw 'Inno Setup 6 was not found.'
    }
    $isccPath = if ($iscc -is [IO.FileInfo]) { $iscc.FullName } else { $iscc.Source }
    & $isccPath "/DSourceRoot=$staging" (Join-Path $desktopRoot 'Packaging\installer.iss')
    if ($LASTEXITCODE -ne 0) {
        throw 'Installer build failed.'
    }
}

Write-Host "Publish staging ready: $staging"
