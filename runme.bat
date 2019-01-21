copy %userprofile%\desktop\1.ps1 c:\1.ps1 /y
copy %userprofile%\desktop\2.ps1 c:\2.ps1 /y
C:\Windows\System32\WindowsPowerShell\v1.0\Powershell.exe -executionPolicy Unrestricted -File ' + "C:\1.ps1"