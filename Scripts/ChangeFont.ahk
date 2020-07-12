WinWait, %1%
WinActivate, %1%
SetKeyDelay, 0 , 200
Send, !o
Send, f
WinActivate, Font
Send, %2%
ControlSetText, Edit2, %3%, Font
ControlSetText, Edit3, %4%, Font
Send, {enter}
return