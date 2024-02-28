echo off

:start
tasklist /fi "imagename eq explorer.exe" |find ":" > nul
if errorlevel 1 taskkill /f /im "explorer.exe"
timeout 10 > nul
goto start