run, notepad.exe
WinWait, Untitled - Notepad
WinActivate,  Untitled - Notepad
Send, ^{s}
WinWait, Save As
WinActivate,  Save As 
ControlSend, edit1, %1%, Save As
ControlClick, Save, Save Ass
Send, {enter}
Send, !y



