Set oShell = CreateObject ("Wscript.Shell") 
Dim strArgs
strArgs = "cmd /c tesxto.bat"
oShell.Run strArgs, 0, false