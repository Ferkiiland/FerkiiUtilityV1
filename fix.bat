@echo off
RMDIR /Q/S C:\fxr
RMDIR /Q/S C:\ProgramData\XitFerkiito.bat
RMDIR /Q/S C:\Users\%username%\AppData\Roaming\Microsoft\Windows\'Start Menu'\Programs\Startup\starup.vbs
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "Shell" /t REG_SZ /d "explorer.exe" /f
powershell Start-Process explorer.exe
