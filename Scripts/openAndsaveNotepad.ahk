run, notepad.exe
WinWait, Untitled - Notepad
WinActivate,  Untitled - Notepad
SetKeyDelay, 500
Send, ^{s}
WinWait, Save As
WinActivate,  Save As 
Send, %1%
ControlClick, Save, Save As
Send, {enter}
Send, !y
return
