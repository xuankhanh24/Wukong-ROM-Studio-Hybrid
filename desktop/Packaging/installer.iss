#define AppName "Wukong ROM Studio"
#define AppVersion "1.0.0"
#ifndef SourceRoot
  #define SourceRoot "..\artifacts\staging\WukongROMStudio"
#endif
#ifndef InstallerOutputDir
  #define InstallerOutputDir "..\artifacts\installer"
#endif
#ifndef InstallerOutputBaseFilename
  #define InstallerOutputBaseFilename "WukongStudio-Setup-x64-1.0.0-unsigned"
#endif

#if !FileExists(AddBackslash(SourceRoot) + "Content\STARK\Launcher_mod\patch_Launcher_mod\patches\a16\profile.json") || !FileExists(AddBackslash(SourceRoot) + "Content\STARK\Launcher_mod\patch_Launcher_mod\patches\a17\profile.json")
  #error Shared STARK payload is stale: missing the shared A16/A17 Launcher profiles. Rebuild Content/STARK before compiling this installer.
#endif

[Setup]
AppId={{B16B5D54-5A03-48FD-9E61-B87CF985E9A7}
AppName={#AppName}
AppVersion={#AppVersion}
AppPublisher=Wukong ROM Studio
DefaultDirName=C:\WukongROMStudio
DisableDirPage=yes
DisableProgramGroupPage=yes
PrivilegesRequired=admin
ArchitecturesAllowed=x64compatible
ArchitecturesInstallIn64BitMode=x64compatible
OutputDir={#InstallerOutputDir}
OutputBaseFilename={#InstallerOutputBaseFilename}
Compression=lzma2/fast
SolidCompression=yes
WizardStyle=modern
UninstallDisplayIcon={app}\App\WukongStudio.exe
SetupIconFile={#SourceRoot}\App\Assets\WukongStudio.ico
SetupLogging=yes
CloseApplications=yes
RestartApplications=no

[Dirs]
Name: "{app}"; Permissions: users-readexec
Name: "{app}\Content"; Permissions: users-modify
Name: "{app}\Content\MOD"; Permissions: users-modify
Name: "{app}\Content\STARK"; Permissions: users-modify
Name: "{app}\Content\TWRP"; Permissions: users-modify
Name: "{app}\Content\OFX"; Permissions: users-modify
Name: "{app}\Content\copy-image"; Permissions: users-modify
Name: "{app}\Data"; Permissions: users-modify
Name: "{app}\Data\Jobs"; Permissions: users-modify
Name: "{app}\Data\Recipes"; Permissions: users-modify
Name: "{app}\Data\Secrets"; Permissions: users-modify
Name: "{app}\Workspace"; Permissions: users-modify
Name: "{app}\ROM_BUILD_DONE"; Permissions: users-modify
Name: "{app}\Temp"; Permissions: users-modify
Name: "{app}\Temp\Packages"; Permissions: users-modify
Name: "{app}\Temp\Downloads"; Permissions: users-modify
Name: "{app}\Temp\Extraction"; Permissions: users-modify
Name: "{app}\Logs"; Permissions: users-modify
Name: "{app}\Logs\crash"; Permissions: users-modify
Name: "{app}\Updates"; Permissions: users-modify
Name: "{app}\Backups"; Permissions: users-modify

[Files]
Source: "{#SourceRoot}\App\*"; DestDir: "{app}\App"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#SourceRoot}\Runtime\*"; DestDir: "{app}\Runtime"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#SourceRoot}\Content\*"; DestDir: "{app}\Content"; Excludes: "\STARK\*"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist uninsneveruninstall; Check: IsFreshInstall
; The entire shared tree is replaced on both fresh installs and upgrades.
; PrepareToInstall moves the old tree to Backups before files are installed.
Source: "{#SourceRoot}\Content\STARK\*"; DestDir: "{app}\Content\STARK"; Flags: ignoreversion recursesubdirs createallsubdirs uninsneveruninstall

[InstallDelete]
Type: files; Name: "{app}\Content\STARK\Cts_Gemini\patch_Cts_Gemini\tools\zipalign.exe"
Type: files; Name: "{app}\Content\STARK\Chat_bubbles\patch_Chat_bubbles\tools\zipalign.exe"
Type: files; Name: "{app}\Content\STARK\Hasselblad_filter\patch_Hasselblad_filter\bin\7z.exe"
Type: files; Name: "{app}\Content\STARK\Hasselblad_filter\patch_Hasselblad_filter\bin\7z.dll"
Type: files; Name: "{app}\Runtime\Bin\Windows\AMD64\apktool_3.0.2.jar"
Type: files; Name: "{app}\Runtime\Bin\Windows\AMD64\smali.jar"
Type: files; Name: "{app}\Runtime\Bin\Windows\AMD64\baksmali.jar"
Type: files; Name: "{app}\Content\STARK\Camera_mod\patch_Camera_mod\bin\smali.jar"
Type: files; Name: "{app}\Content\STARK\Camera_mod\patch_Camera_mod\bin\baksmali.jar"
Type: files; Name: "{app}\Content\STARK\Chat_bubbles\patch_Chat_bubbles\tools\smali.jar"
Type: files; Name: "{app}\Content\STARK\Chat_bubbles\patch_Chat_bubbles\tools\baksmali.jar"
Type: files; Name: "{app}\Content\STARK\Cts_Gemini\patch_Cts_Gemini\tools\smali.jar"
Type: files; Name: "{app}\Content\STARK\Cts_Gemini\patch_Cts_Gemini\tools\baksmali.jar"
Type: files; Name: "{app}\Content\STARK\Hasselblad_filter\patch_Hasselblad_filter\bin\smali.jar"
Type: files; Name: "{app}\Content\STARK\Hasselblad_filter\patch_Hasselblad_filter\bin\baksmali.jar"
Type: filesandordirs; Name: "{app}\App\WebView2"
Type: files; Name: "{app}\Runtime\Config\wk_manager_system_policy.cil"
Type: filesandordirs; Name: "{app}\Runtime\STARK"

[Icons]
Name: "{autoprograms}\Wukong ROM Studio"; Filename: "{app}\App\WukongStudio.exe"; WorkingDir: "{app}\App"; AppUserModelID: "WukongROMStudio.Desktop"
Name: "{autodesktop}\Wukong ROM Studio"; Filename: "{app}\App\WukongStudio.exe"; WorkingDir: "{app}\App"; AppUserModelID: "WukongROMStudio.Desktop"

[Registry]
Root: HKA; Subkey: "Software\Classes\wukongstudio"; ValueType: string; ValueName: ""; ValueData: "URL:Wukong ROM Studio Protocol"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\wukongstudio"; ValueType: string; ValueName: "URL Protocol"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\wukongstudio\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\App\WukongStudio.exe,0"
Root: HKA; Subkey: "Software\Classes\wukongstudio\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\App\WukongStudio.exe"" ""%1"""

[Run]
Filename: "{sys}\icacls.exe"; Parameters: """{app}\App"" /reset /T /C"; Flags: runhidden waituntilterminated
Filename: "{sys}\icacls.exe"; Parameters: """{app}\App"" /inheritance:r /grant:r *S-1-5-18:(OI)(CI)F *S-1-5-32-544:(OI)(CI)F *S-1-5-32-545:(OI)(CI)RX"; Flags: runhidden waituntilterminated
Filename: "{sys}\icacls.exe"; Parameters: """{app}\Runtime"" /reset /T /C"; Flags: runhidden waituntilterminated
Filename: "{sys}\icacls.exe"; Parameters: """{app}\Runtime"" /inheritance:r /grant:r *S-1-5-18:(OI)(CI)F *S-1-5-32-544:(OI)(CI)F *S-1-5-32-545:(OI)(CI)RX"; Flags: runhidden waituntilterminated
Filename: "{sys}\icacls.exe"; Parameters: """{app}\Content\STARK"" /grant:r *S-1-5-32-545:(OI)(CI)M"; Flags: runhidden waituntilterminated
Filename: "{sys}\icacls.exe"; Parameters: """{app}\Runtime\Flash_script"" /grant:r *S-1-5-32-545:(OI)(CI)M"; Flags: runhidden waituntilterminated
Filename: "{app}\App\WukongStudio.exe"; Description: "Khởi động Wukong ROM Studio"; Flags: postinstall nowait skipifsilent runasoriginaluser

[Code]
var
  RemoveAllDataCheckBox: TNewCheckBox;
  WasExistingInstall: Boolean;
  ContentStarkBackup: String;
  RuntimeStarkBackup: String;
  StarkInstallFinished: Boolean;

function IsFreshInstall(): Boolean;
begin
  Result := not WasExistingInstall;
end;

// STARK snapshot helpers begin
{ Use the Win32 entry point so DLLGetLastError captures the actual move error.
  The Pascal RenameFile wrapper does not preserve it. }
function MoveStarkPath(ExistingPath, NewPath: String): Boolean;
  external 'MoveFileW@kernel32.dll stdcall';

function StarkMoveError(Path: String; ErrorCode: Integer): String;
begin
  Result := Path + ' (Windows error ' + IntToStr(ErrorCode) + ': ' +
    SysErrorMessage(ErrorCode) + ')';
end;

function StarkDirectoryEmpty(Path: String): Boolean;
var
  Entry: TFindRec;
begin
  Result := False;
  if FindFirst(Path + '\*', Entry) then
  begin
    Result := True;
    try
      repeat
        if (Entry.Name <> '.') and (Entry.Name <> '..') then
        begin
          Result := False;
          Break;
        end;
      until not FindNext(Entry);
    finally
      FindClose(Entry);
    end;
  end;
end;

function MoveStarkDirectory(SourcePath, DestinationPath: String): String;
var
  Entry: TFindRec;
  Names: TArrayOfString;
  Count, Index, ErrorCode, NameCount: Integer;
begin
  Result := '';
  if MoveStarkPath(SourcePath, DestinationPath) then Exit;
  ErrorCode := DLLGetLastError;
  Log('STARK directory rename unavailable: ' + StarkMoveError(SourcePath, ErrorCode));
  { A terminal/editor can hold the root open while its children are movable.
    Keep that root, but retire ALL children rather than merging old and new. }
  if FileExists(DestinationPath) or
    (DirExists(DestinationPath) and not StarkDirectoryEmpty(DestinationPath)) then
  begin
    Result := 'Backup destination is not empty: ' + DestinationPath;
    Exit;
  end;
  if not ForceDirectories(DestinationPath) then
  begin
    Result := 'Cannot create backup: ' + DestinationPath;
    Exit;
  end;
  Count := 0;
  NameCount := 0;
  if FindFirst(SourcePath + '\*', Entry) then
  begin
    try
      repeat
        if (Entry.Name <> '.') and (Entry.Name <> '..') then
        begin
          SetArrayLength(Names, NameCount + 1);
          Names[NameCount] := Entry.Name;
          NameCount := NameCount + 1;
        end;
      until not FindNext(Entry);
    finally
      FindClose(Entry);
    end;
  end
  else
  begin
    Result := 'Cannot enumerate STARK directory: ' + SourcePath;
  end;
  if Result = '' then
    for Index := 0 to NameCount - 1 do
    begin
      if not MoveStarkPath(SourcePath + '\' + Names[Index], DestinationPath + '\' + Names[Index]) then
      begin
        ErrorCode := DLLGetLastError;
        Result := 'Cannot move ' + StarkMoveError(SourcePath + '\' + Names[Index], ErrorCode);
        Break;
      end;
      Count := Count + 1;
    end;
  if (Result = '') and not StarkDirectoryEmpty(SourcePath) then
    Result := 'STARK changed while preparing installation: ' + SourcePath;
  if Result <> '' then
  begin
    { Roll back only entries moved by this attempt; never overwrite originals. }
    for Index := Count - 1 downto 0 do
      if not MoveStarkPath(DestinationPath + '\' + Names[Index], SourcePath + '\' + Names[Index]) then
        Result := Result + #13#10 + 'Rollback blocked; preserved at ' + DestinationPath + '\' + Names[Index];
    RemoveDir(DestinationPath); { only succeeds if empty }
    Log('STARK snapshot failed: ' + Result);
    Exit;
  end;
  RemoveDir(SourcePath); { may remain empty while its handle is open }
  Log('STARK snapshot moved ' + IntToStr(Count) + ' entries: ' + SourcePath + ' -> ' + DestinationPath);
end;

function RetireStarkDirectory(RelativePath, BackupName: String; var BackupPath: String): String;
var
  SourcePath, Candidate, BasePath: String;
  Suffix: Integer;
begin
  Result := '';
  if BackupPath <> '' then Exit;
  if (RelativePath <> 'Content\STARK') and (RelativePath <> 'Runtime\STARK') then
  begin
    Result := 'Refusing to replace an unmanaged directory: ' + RelativePath;
    Exit;
  end;
  SourcePath := ExpandConstant('{app}\') + RelativePath;
  if not DirExists(SourcePath) then Exit;
  if not ForceDirectories(ExpandConstant('{app}\Backups')) then
  begin
    Result := 'Cannot create the STARK backup directory.';
    Exit;
  end;
  BasePath := ExpandConstant('{app}\Backups\') + BackupName + '-' +
    GetDateTimeString('yyyymmdd-hhnnss', '-', ':');
  Candidate := BasePath;
  Suffix := 0;
  while DirExists(Candidate) or FileExists(Candidate) or
    DirExists(Candidate + '-incomplete') or FileExists(Candidate + '-incomplete') do
  begin
    Suffix := Suffix + 1;
    Candidate := BasePath + '-' + IntToStr(Suffix);
  end;
  Result := MoveStarkDirectory(SourcePath, Candidate);
  if Result <> '' then
  begin
    Result := 'Cannot back up STARK. ' + Result + #13#10 +
      'Close programs using the reported path and retry. Backup location: ' + Candidate;
    Exit;
  end;
  BackupPath := Candidate;
  Log('STARK snapshot: ' + SourcePath + ' -> ' + BackupPath);
end;

procedure RestoreStarkDirectory(RelativePath, BackupPath: String);
var
  TargetPath, IncompletePath, MoveError: String;
begin
  if (BackupPath = '') or not DirExists(BackupPath) then Exit;
  TargetPath := ExpandConstant('{app}\') + RelativePath;
  if DirExists(TargetPath) then
  begin
    IncompletePath := BackupPath + '-incomplete';
    MoveError := MoveStarkDirectory(TargetPath, IncompletePath);
    if MoveError <> '' then
    begin
      Log('STARK restore blocked: ' + MoveError + '; original remains safe at ' + BackupPath);
      Exit;
    end;
  end;
  MoveError := MoveStarkDirectory(BackupPath, TargetPath);
  if MoveError = '' then
    Log('STARK restored after incomplete installation: ' + TargetPath)
  else
    Log('STARK restore failed: ' + MoveError + '; original remains safe at ' + BackupPath);
end;
// STARK snapshot helpers end

function BackupLegacyPatchTools(): String;
var
  Relatives: TArrayOfString;
  Index: Integer;
  SourceFile: String;
  BackupFile: String;
  BackupRoot: String;
begin
  Result := '';
  BackupRoot := ExpandConstant('{app}\Backups\LegacyPatchTools\') + GetDateTimeString('yyyymmdd-hhnnss', '-', ':');
  SetArrayLength(Relatives, 15);
  Relatives[0] := 'Runtime\Bin\Windows\AMD64\apktool_3.0.2.jar';
  Relatives[1] := 'Runtime\Bin\Windows\AMD64\smali.jar';
  Relatives[2] := 'Runtime\Bin\Windows\AMD64\baksmali.jar';
  Relatives[3] := 'Content\STARK\Camera_mod\patch_Camera_mod\bin\smali.jar';
  Relatives[4] := 'Content\STARK\Camera_mod\patch_Camera_mod\bin\baksmali.jar';
  Relatives[5] := 'Content\STARK\Chat_bubbles\patch_Chat_bubbles\tools\smali.jar';
  Relatives[6] := 'Content\STARK\Chat_bubbles\patch_Chat_bubbles\tools\baksmali.jar';
  Relatives[7] := 'Content\STARK\Cts_Gemini\patch_Cts_Gemini\tools\smali.jar';
  Relatives[8] := 'Content\STARK\Cts_Gemini\patch_Cts_Gemini\tools\baksmali.jar';
  Relatives[9] := 'Content\STARK\Hasselblad_filter\patch_Hasselblad_filter\bin\smali.jar';
  Relatives[10] := 'Content\STARK\Hasselblad_filter\patch_Hasselblad_filter\bin\baksmali.jar';
  Relatives[11] := 'Content\STARK\Cts_Gemini\patch_Cts_Gemini\tools\zipalign.exe';
  Relatives[12] := 'Content\STARK\Chat_bubbles\patch_Chat_bubbles\tools\zipalign.exe';
  Relatives[13] := 'Content\STARK\Hasselblad_filter\patch_Hasselblad_filter\bin\7z.exe';
  Relatives[14] := 'Content\STARK\Hasselblad_filter\patch_Hasselblad_filter\bin\7z.dll';
  for Index := 0 to GetArrayLength(Relatives) - 1 do
  begin
    SourceFile := ExpandConstant('{app}\') + Relatives[Index];
    if FileExists(SourceFile) then
    begin
      BackupFile := BackupRoot + '\' + Relatives[Index];
      if not ForceDirectories(ExtractFileDir(BackupFile)) then
      begin
        Result := 'Cannot create legacy tool backup: ' + BackupFile;
        Exit;
      end;
      if not CopyFile(SourceFile, BackupFile, False) then
      begin
        Result := 'Cannot back up legacy tool: ' + SourceFile;
        Exit;
      end;
      if GetSHA256OfFile(SourceFile) <> GetSHA256OfFile(BackupFile) then
      begin
        Result := 'Legacy tool backup verification failed: ' + SourceFile;
        Exit;
      end;
    end;
  end;
end;

function PrepareToInstall(var NeedsRestart: Boolean): String;
var
  ResultCode: Integer;
begin
  Result := '';
  Exec('taskkill.exe', '/F /IM WukongStudio.exe /T', '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
  Exec('powershell.exe', '-NoProfile -Command "Get-CimInstance Win32_Process | Where-Object { $app = (''{app}'' -replace ''\\\\'', ''\''); $_.ExecutablePath -like ($app + ''*'') } | ForEach-Object { Stop-Process -Id $_.ProcessId -Force -ErrorAction SilentlyContinue }"', '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
  Sleep(500);
  WasExistingInstall := FileExists(ExpandConstant('{app}\App\WukongStudio.exe'));
  Result := BackupLegacyPatchTools();
  if Result <> '' then Exit;
  Result := RetireStarkDirectory('Content\STARK', 'content-stark', ContentStarkBackup);
  if Result <> '' then Exit;
  Result := RetireStarkDirectory('Runtime\STARK', 'runtime-stark', RuntimeStarkBackup);
end;

// STARK snapshot events begin
procedure CurStepChanged(CurStep: TSetupStep);
begin
  if CurStep = ssDone then StarkInstallFinished := True;
end;

procedure DeinitializeSetup();
begin
  if not StarkInstallFinished then
  begin
    RestoreStarkDirectory('Content\STARK', ContentStarkBackup);
    RestoreStarkDirectory('Runtime\STARK', RuntimeStarkBackup);
  end;
end;
// STARK snapshot events end

function InitializeUninstall(): Boolean;
begin
  Result := True;
end;

procedure InitializeUninstallProgressForm();
begin
  RemoveAllDataCheckBox := TNewCheckBox.Create(UninstallProgressForm);
  RemoveAllDataCheckBox.Parent := UninstallProgressForm.InnerPage;
  RemoveAllDataCheckBox.Left := UninstallProgressForm.StatusLabel.Left;
  RemoveAllDataCheckBox.Top := UninstallProgressForm.StatusLabel.Top + ScaleY(42);
  RemoveAllDataCheckBox.Width := UninstallProgressForm.InnerPage.ClientWidth - ScaleX(32);
  RemoveAllDataCheckBox.Height := ScaleY(34);
  RemoveAllDataCheckBox.Caption := 'Xóa toàn bộ C:\WukongROMStudio (Content, Data, Workspace, ROM và Logs)';
  RemoveAllDataCheckBox.Checked := False;
end;

procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
begin
  if (CurUninstallStep = usPostUninstall) and RemoveAllDataCheckBox.Checked then
  begin
    if MsgBox(
      'Xác nhận xóa vĩnh viễn toàn bộ dữ liệu trong C:\WukongROMStudio?',
      mbConfirmation,
      MB_YESNO) = IDYES then
    begin
      DelTree(ExpandConstant('{app}'), True, True, True);
    end;
  end;
end;
