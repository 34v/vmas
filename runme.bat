copy %userprofile%\desktop\vmas-master\vmas-master\1.ps1 c:\1.ps1 /y
copy %userprofile%\desktop\\vmas-master\vmas-master\2.ps1 c:\2.ps1 /y
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v AutoAdminLogon /t REG_SZ /d 1 /f
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v ForceAutoLogon /t REG_SZ /d 1 /f
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultUserName  /t REG_SZ /d "Administrator" /f
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultPassword  /t REG_SZ /d "Welcome2VMA$" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v AutoLogonCount /f
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v ForceUnlockLogon  /t REG_DWORD /d 1 /f
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultDomainName /t REG_SZ /d ".\"
C:\Windows\System32\WindowsPowerShell\v1.0\Powershell.exe -executionPolicy Unrestricted -file c:\1.ps1
pause
rem C:\Windows\System32\WindowsPowerShell\v1.0\Powershell.exe -executionPolicy Unrestricted -file ' + "C:\1.ps1`"