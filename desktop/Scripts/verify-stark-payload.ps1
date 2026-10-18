[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)][string]$SourceRoot,
    [Parameter(Mandatory = $true)][string]$StagingRoot
)

$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest
$sourceStark = Join-Path ([IO.Path]::GetFullPath($SourceRoot)) 'STARK'
$stagedStark = Join-Path ([IO.Path]::GetFullPath($StagingRoot)) 'Content/STARK'
if (-not (Test-Path -LiteralPath $sourceStark -PathType Container) -or
    -not (Test-Path -LiteralPath $stagedStark -PathType Container)) {
    throw 'Shared STARK source or installer payload is missing.'
}

function Get-PayloadFiles([string]$Root) {
    Get-ChildItem -LiteralPath $Root -Recurse -File | ForEach-Object {
        $relative = [IO.Path]::GetRelativePath($Root, $_.FullName).Replace('\', '/')
        if ($relative -notmatch '(^|/)(__pycache__|scratch|\.scratch|_patch_temp|dist)(/|$)' -and
            $_.Extension -notin @('.pyc', '.pyo')) {
            [pscustomobject]@{ Relative = $relative; File = $_.FullName }
        }
    }
}

$expected = @{}
foreach ($file in @(Get-PayloadFiles $sourceStark)) {
    $expected[$file.Relative] = (Get-FileHash -LiteralPath $file.File -Algorithm SHA256).Hash
}
if ($expected.Count -eq 0) { throw 'Shared STARK source is empty.' }
$actual = @{}
$stagedCache = @(Get-ChildItem -LiteralPath $stagedStark -Recurse -File | Where-Object {
    $relative = [IO.Path]::GetRelativePath($stagedStark, $_.FullName).Replace('\', '/')
    $relative -match '(^|/)(__pycache__|scratch|\.scratch|_patch_temp|dist)(/|$)' -or
        $_.Extension -in @('.pyc', '.pyo')
})
if ($stagedCache.Count -gt 0) {
    throw 'Installer STARK contains generated caches or build scratch; rebuild a clean payload.'
}
foreach ($file in @(Get-PayloadFiles $stagedStark)) {
    $actual[$file.Relative] = (Get-FileHash -LiteralPath $file.File -Algorithm SHA256).Hash
}
$problems = @()
foreach ($relative in $expected.Keys) {
    if (-not $actual.ContainsKey($relative)) { $problems += "missing: $relative" }
    elseif ($actual[$relative] -ne $expected[$relative]) { $problems += "stale: $relative" }
}
foreach ($relative in $actual.Keys) {
    if (-not $expected.ContainsKey($relative)) { $problems += "unexpected: $relative" }
}
if ($problems.Count -gt 0) {
    throw ('Installer STARK does not match current source. Rebuild the payload; do not reuse an older staging tree.' +
        [Environment]::NewLine + ($problems -join [Environment]::NewLine))
}
Write-Host "Verified current shared STARK payload: $($expected.Count) files."
