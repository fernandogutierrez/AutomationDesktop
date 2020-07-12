OpenApplication(exePath)
{
	run, %exePath%
	return
}

SaveNotepad(name)
{
	WinWait, Untitled - Notepad
	WinActivate,  Untitled - Notepad
	Send, ^{s}
	WinWait, Save As
	WinActivate,  Save As
	ControlSend, edit1, %name%.txt, Save As
	ControlClick, Save, Save Ass
	Send, {enter}
	Send, !y
}

OpenApplication("notepad")
SaveNotepad("A")
