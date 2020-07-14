SetTitleMatchMode, 2
WinWait, %1%.txt
WinActivate, %1%.txt
SetKeyDelay, 200
Send, !f
Send, A
Send, %2%.log
ControlClick, Save, Save As
Send, {enter}
Send, !y
Send, !y
return
