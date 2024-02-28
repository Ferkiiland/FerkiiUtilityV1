Set oShell = CreateObject ("Wscript.Shell") 
Dim strArgs
strArgs = "cmd /c C:\fxr\Res\protector.bat"
oShell.Run strArgs, 0, false