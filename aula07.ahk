
#SingleInstance,Force
#MaxHotkeysPerInterval 200

#d::
Run, %a_desktop%
return

#w::
Run, C:\Users\juho2\Downloads\
return

#n::
SetTitleMatchMode, 2
IfWinExist, Untitled - Notepad
{
	WinActivate, Untitled - Notepad
} else {
	Run, Notepad.exe
}
return

!n::
Process, Close, SnippingTool.exe
Run, SnippingTool.exe
WinWait, ahk_exe SnippingTool.exe
Sleep 200
ControlSend, , !{n}, ahk_class Microsoft-Windows-SnipperToolbar
return

^!n::
WinClose, Snipping Tool
WinWaitClose, Snipping Tool
Run, SnippingTool.exe
WinWait, ahk_exe SnippingTool.exe
Sleep 200
ControlSend, , !{n}, ahk_class Microsoft-Windows-SnipperToolbar
return

#c::
SetTimer, KeyPressMonitor, 300

if (KeyPressCount > 0)
{
	KeyPressCount += 1
} else {
	KeyPressCount := 1
}
return

KeyPressMonitor:
if (KeyPressCount = 1)
{
	Run, calc.exe
}
else if (KeyPressCount = 2)
{
	Run, cmd.exe
}
else if (KeyPressCount > 2)	
{
	Run, Chrome.exe
}
KeyPressCount := 0
SetTimer, KeyPressMonitor, Off
Return

^Numpad1::
WinActivate, ahk_class Notepad
return

^!NumpadAdd::
;~ Run, mailto:
Run, http://www.google.com
return

WheelLeft::Browser_Back
WheelRight::Browser_Forward

#ESC:: ;turn off monitor
SendMessage, 0x112, 0xF170, 2,, Program Manager
return

!WheelUp::Send {Volume_Up}
!WheelDown::Send {Volume_Down}

#If MouseIsOveR("ahk_class Shell_TrayWnd")
WheelUp::Send {Volume_Up}
WheelDown::Send {Volume_Down}
#If

MouseIsOver(WinTitle)
{
	MouseGetPos,,, ID
	return WinExist(WinTitle " ahk_id " ID)
}

ESC::ExitApp

return