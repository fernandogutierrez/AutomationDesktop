StartTime := A_TickCount

RunWait, "openAndsaveNotepad.ahk" a 
RunWait, "ChangeFont.ahk"  a.txt "Courier" "Bold Oblique" "15"
RunWait, "wordWrapping.ahk" "a.txt"
RunWait, "writeTextOn.ahk" "user statistics for Windows Defender User Account" "a.txt - Notepad"
RunWait, "openAndsaveNotepad.ahk" b
RunWait, "openAndsaveNotepad.ahk" c

EndTime := A_TickCount
ElapsedMilliseconds := EndTime - StartTime
 
if(%ElapsedMilliseconds% < 500)
{ 
   	RunWait, "logApplications.ahk" b
}
else
{
	RunWait, "logApplications.ahk" c
}

RunWait, "copyDataFromRegedit.ahk"
RunWait, "closeProgram.ahk" Calculator
RunWait, "saveNote.ahk" b Min
RunWait, "saveNote.ahk" c Max

return