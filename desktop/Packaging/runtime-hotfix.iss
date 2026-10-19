; Script-only repair for an existing installation. No ROM/MOD binaries or secrets.
#ifndef PayloadRoot
  #error PayloadRoot is required
#endif
#ifndef HotfixOutputDir
  #define HotfixOutputDir "..\artifacts\runtime-hotfix"
#endif
#if !FileExists(AddBackslash(PayloadRoot) + "Runtime\Scripts\wukong\content_packs.py")
  #error Current runtime package is missing
#endif
[Setup]
AppId=WukongROMStudio-RuntimeHotfix
AppName=Wukong ROM Studio Runtime Update
AppVersion=7.0
DefaultDirName={sd}\WukongROMStudio
UsePreviousAppDir=no
PrivilegesRequired=admin
Uninstallable=no
CreateUninstallRegKey=no
DisableDirPage=yes
DisableProgramGroupPage=yes
CloseApplications=no
RestartApplications=no
OutputDir={#HotfixOutputDir}
OutputBaseFilename=WukongROMStudio-Runtime-V7-Update
Compression=lzma2/fast
SolidCompression=yes
WizardStyle=modern
[Files]
Source: "{#PayloadRoot}\Runtime\Scripts\*"; DestDir: "{app}\Runtime\Scripts"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#PayloadRoot}\Content\STARK\Launcher_mod\patch_Launcher_mod\*"; DestDir: "{app}\Content\STARK\Launcher_mod\patch_Launcher_mod"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#PayloadRoot}\Data\ContentSync\index.json"; DestDir: "{app}\Data\ContentSync"; Flags: ignoreversion
[Code]
function PrepareToInstall(var NeedsRestart: Boolean): String;
begin
  Result := '';
  if not FileExists(ExpandConstant('{app}\Runtime\Scripts\wukong\content_packs.py')) then
    Result := 'An existing Wukong ROM Studio installation is required.';
end;
