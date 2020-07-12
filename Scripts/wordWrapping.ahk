
Loop HKEY_CURRENT_USER, SOFTWARE\Microsoft\Notepad
    RegDelete

WinWait, %1%
WinActivate, %1%
SetKeyDelay, 500
Send !o
Send w
Return