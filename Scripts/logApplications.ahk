getCurrentDateTime()
{
	FormatTime, today_ddd, %today%, ddd
	FormatTime, vDate,, dd/MM/yyyy
	date := today_ddd vDate
	return, date
}


openProgram(name)
{
	Run, %name%, , , OutputVarPID
	return, OutputVarPID
}


activateWindow(windowName)
{
    SetTitleMatchMode, 2
	WinWait, %windowName%
	WinActivate, %windowName%
}

insertBreakLine(windowName)
{
   RunWait, "writeTextOn.ahk"  `n  %windowName%
}



programName = "notepad.exe"
pid := openProgram(programName)
Date := getCurrentDateTime()
activateWindow("a.txt - Notepad")
RunWait, "writeTextOn.ahk" "%Date% %pid% - %programName%" "a.txt - Notepad"


programName = "wordpad.exe"
pid := openProgram(programName)
Date := getCurrentDateTime()
activateWindow("a.txt - Notepad")

insertBreakLine("a.txt - Notepad")
RunWait, "writeTextOn.ahk" "%Date% %pid% - %programName%" "a.txt - Notepad"


programName = "calc.exe"
pid := openProgram(programName)
Date := getCurrentDateTime()
activateWindow("a.txt - Notepad")
insertBreakLine("a.txt - Notepad")
RunWait, "writeTextOn.ahk" "%Date% %pid% - %programName%" "a.txt - Notepad"

return
