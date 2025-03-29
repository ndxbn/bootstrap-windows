#If WinActive("ahk_exe msedge.exe")
SC03A::
    Send, !d
    Sleep, 50
    Send, {Home}
    Sleep, 50
    Send, READ:
    Sleep, 50
    Send, {Enter}
    Sleep, 50
    Send, {Enter}
return
#If
