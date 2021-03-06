# ������� ������ �������������
Net user Admin /delete
Net user LabAdmin /delete
# ��������� ����������
Set-NetFirewallProfile -All -Enabled False
# ��������� ������ ������� � ���������� �����
Set-WinUserLanguageList -LanguageList ru, en-US �Force
# ������������� ������� ���� ��� ��������, �� �������������� ������ 
Set-WinSystemLocale ru
# ������������� ������� ���� ����������
Set-WinUILanguageOverride ru
# ������������� ������ ������
Set-WinHomeLocation 203
# ������������� ���������� ���� ����� �� ���������
Set-WinDefaultInputMethodOverride "0409:00000409"
# �������� ����������� ������ �� ����� � ����
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowSecondsInSystemClock /t REG_DWORD /d 1 /f
# ������������� ���������� ������� ����
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\TimeZoneInformation" /v TimeZoneKeyName /t REG_SZ /d "Russian Standard Time" /f
# ��������� ������������ Windows
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency /t REG_DWORD /d 0 /f
# ��������� �������������� ������� ����� ��������� Windows
REG ADD "HKCU\Control Panel\Accessibility" /v DynamicScrollbars /t REG_DWORD /d 0 /f
# ������� �� ����������� OneDrive � WindowsDefender
REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v OneDrive /f
REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v SecurityHealth /f
# ������� �� ������������ ����������� �������� �����
Remove-Item "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\MapDrive - Shortcut.lnk"
# ������� "�����" ������ �� ������������ � ���������� �� ������������
schtasks /Delete /F /TN "\Microsoft\Windows\VMAS\Disable Clip and Drives"
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /v fDisableCcm /f
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /v fDisableCdm /f
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /v fDisableClip /f
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /v fDisableCpm /f
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /v fDisableLPT /f
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /v fForceClientLptDef /f
REG ADD "HKCU\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" /v fDisableClip /t REG_DWORD /d 0 /f
REG ADD "HKCU\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" /v fDisableCdm /t REG_DWORD /d 0 /f
REG ADD "HKCU\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" /v fAutoClientDrives /t REG_DWORD /d 1 /f
REG ADD "HKCU\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" /v MaxIdleTime /t REG_DWORD /d 0 /f
# ��������� WindowsDefender  �����  ��������
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v AllowFastServiceStartup /t REG_DWORD /d 0 /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v ServiceKeepAlive /t REG_DWORD /d 0 /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableIOAVProtection /t REG_DWORD /d 1 /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableRealtimeMonitoring /t REG_DWORD /d 1 /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableBehaviorMonitoring /t REG_DWORD /d 1 /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableOnAccessProtection /t REG_DWORD /d 1 /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableScanOnRealtimeEnable /t REG_DWORD /d 1 /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v DisableBlockAtFirstSeen /t REG_DWORD /d 1 /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v LocalSettingOverrideSpynetReporting /t REG_DWORD /d 0 /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v SubmitSamplesConsent /t REG_DWORD /d 2 /f
# ��������� ���������� ����� ��������
REG ADD "HKLM\ SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v AllowTelemetry  /t REG_DWORD /d 0 /f
# ��������� ���� ���������� ����� ��������
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\WindowsUpdate\AU" /v NoAutoUpdate /t REG_DWORD /d 1 /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\WindowsUpdate\AU" /v NoAutoRebootWithLoggedOnUsers /t REG_DWORD /d 1 /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\WindowsUpdate\AU" /v RebootRelaunchTimeoutEnabled /t REG_DWORD /d 0 /f
# ��������� ������� ������ � ��������
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v EnableAutoTray /t REG_DWORD /d 0 /f
# ��������� ������ ������
Set-Service SysMain -StartupType Disabled
Set-Service Spooler -StartupType Disabled
Set-Service SEMgrSvc -StartupType Disabled
Set-Service TrkWks -StartupType Disabled
Set-Service ShellHWDetection -StartupType Disabled
Set-Service wlidsvc -StartupType Disabled
Set-Service NcbService -StartupType Disabled
Set-Service CertPropSvc -StartupType Disabled
Set-Service lfsvc -StartupType Disabled
Set-Service ScDeviceEnum -StartupType Disabled
Set-Service DPS -StartupType Disabled
Set-Service PcaSvc -StartupType Disabled
Set-Service BITS -StartupType Disabled
Set-Service DiagTrack -StartupType Disabled
Set-Service wuauserv -StartupType Disabled
REG ADD "HKLM\SYSTEM\ControlSet001\Hardware Profiles\UnitedVideo\CONTROL\VIDEO\{A93E238F-4F59-11E8-BE4C-806E6F6E6963}\0000" /v DefaultSettings.XResolution /t REG_DWORD /d 1920 /f
REG ADD "HKLM\SYSTEM\ControlSet001\Hardware Profiles\UnitedVideo\CONTROL\VIDEO\{A93E238F-4F59-11E8-BE4C-806E6F6E6963}\0000" /v DefaultSettings.YResolution /t REG_DWORD /d 1080 /f
Write-Host "Changing RunOnce script." -foregroundcolor "magenta"
$RunOnceKey = "HKLM:\Software\Microsoft\Windows\CurrentVersion\RunOnce"
set-itemproperty $RunOnceKey "NextRun" ('cmd.exe /C Powershell.exe �ExecutionPolicy Bypass -noexit -file C:\2.ps1')
#set-itemproperty $RunOnceKey "NextRun" ('C:\Windows\System32\WindowsPowerShell\v1.0\Powershell.exe -executionPolicy Unrestricted -File ' + "C:\2.ps1")
# ������������� �������
Restart-Computer