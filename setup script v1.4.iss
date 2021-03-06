; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Minimal ADB and Fastboot"
#define MyAppVersion "1.4"
#define MyAppPublisher "Sam Rodberg"
#define MyAppURL "http://forum.xda-developers.com/showthread.php?t=2317790"
#define MyAppExeName "MAF32.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{C5564379-582D-457A-9E68-A9E7C1F1C4EC}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
InfoBeforeFile=D:\Development Files\Minimal ADB and Fastbot Project\resources\Version 1.4\Disclaimer.txt
OutputDir=D:\Development Files\Minimal ADB and Fastbot Project\setups
OutputBaseFilename=minimal_adb_fastboot_v1.4_setup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "D:\Development Files\Minimal ADB and Fastbot Project\resources\Version 1.4\MAF32.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Development Files\Minimal ADB and Fastbot Project\resources\Version 1.4\adb.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Development Files\Minimal ADB and Fastbot Project\resources\Version 1.4\AdbWinApi.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Development Files\Minimal ADB and Fastbot Project\resources\Version 1.4\AdbWinUsbApi.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Development Files\Minimal ADB and Fastbot Project\resources\Version 1.4\fastboot.exe"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

