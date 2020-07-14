StartTime := A_TickCount

RunWait, "D:\Autohotkey project\Desktop UI Automation\Scripts\openAndsaveNotepad.ahk" a 
RunWait, "D:\Autohotkey project\Desktop UI Automation\Scripts\ChangeFont.ahk"  a.txt "Courier" "Bold Oblique" "15"
RunWait, "D:\Autohotkey project\Desktop UI Automation\Scripts\wordWrapping.ahk" "a.txt"
RunWait, "D:\Autohotkey project\Desktop UI Automation\Scripts\writeTextOn.ahk" "user statistics for Windows Defender User Account" "a.txt - Notepad"
RunWait, "D:\Autohotkey project\Desktop UI Automation\Scripts\openAndsaveNotepad.ahk" b
RunWait, "D:\Autohotkey project\Desktop UI Automation\Scripts\openAndsaveNotepad.ahk" c

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
return