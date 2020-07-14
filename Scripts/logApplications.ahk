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


windowTitle = %1%.txt

programName := "notepad.exe"
pid := openProgram(programName)
Date := getCurrentDateTime()
activateWindow(windowTitle)
RunWait, "writeTextOn.ahk" "%Date% %pid% - %programName%" %windowTitle%


programName = "wordpad.exe"
pid := openProgram(programName)
Date := getCurrentDateTime()
activateWindow(windowTitle)
insertBreakLine(windowTitle)
RunWait, "writeTextOn.ahk" "%Date% %pid% - %programName%" %windowTitle%


programName = "calc.exe"
pid := openProgram(programName)
Date := getCurrentDateTime()
activateWindow(windowTitle)
insertBreakLine(windowTitle)
RunWait, "writeTextOn.ahk" "%Date% %pid% - %programName%" %windowTitle%

return
