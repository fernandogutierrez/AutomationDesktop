Dim objShell
Set objShell = Wscript.CreateObject("WScript.Shell")

runCmd = "openAndsaveNotepad.ahk a"
objShell.Run "cmd /c " & runCmd, 0, True


runCmd = "openAndsaveNotepad.ahk b"
objShell.Run "cmd /c " & runCmd, 0, True


runCmd = "openAndsaveNotepad.ahk c"
objShell.Run "cmd /c " & runCmd, 0, True



objShell.Run "writeTextOn.ahk ""user statistics for Windows Defender User Account"" ""a.txt - Notepad""" 

