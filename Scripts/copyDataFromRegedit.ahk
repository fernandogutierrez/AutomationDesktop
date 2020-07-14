RegRead, appNameData, HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\Notepad\Capabilities, ApplicationName
WinWait, Document - WordPad
WinActivate, Document - WordPad
Send, %appNameData%
Send, ^{s}
Send, "%A_Desktop%\RegeditKey.txt"
ControlClick, Save, Save As
Send, {enter}
Send, !y
Send, {enter}
return
