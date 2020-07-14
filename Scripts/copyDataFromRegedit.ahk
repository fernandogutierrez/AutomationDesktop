RegRead, appNameData, HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\Notepad\Capabilities, ApplicationName
WinWait, Document - WordPad
WinActivate, Document - WordPad
; ControlSend, RICHEDIT50W3, %appNameData% , Document - WordPad
Send, %appNameData%