run, notepad.exe
WinWait, Untitled - Notepad
WinActivate,  Untitled - Notepad
SetKeyDelay, 200
Send, ^{s}
WinWait, Save As
WinActivate,  Save As 
ControlSend, edit1, %1%, Save As
ControlClick, Save, Save As
Send, {enter}
Send, !y
return
