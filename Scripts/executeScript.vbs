Dim objShell
Set objShell = Wscript.CreateObject("WScript.Shell")


openAndSaveCmd = "openAndsaveNotepad.ahk a"
objShell.Run "cmd /c " & openAndSaveCmd, 0, true



changeFontCmd = "ChangeFont.ahk  ""a.txt - Notepad"" Courier ""Bold Oblique"" 15"
objShell.Run "cmd /c " & changeFontCmd, 0, true



writeTextCmd = "writeTextOn.ahk ""user statistics for Windows Defender User Account"" ""a.txt - Notepad"" " 
objShell.Run "cmd /c " & writeTextCmd, 0, true



