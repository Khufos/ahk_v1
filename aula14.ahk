#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%


^q::
gosub, myLabel
return


#IfWinActive ahk_class CabinetWClass
:*:autohotkey::C:\Users\bashy\Documents\selenium
#IfWinActive
myLabel:
MsgBox %A_ScriptDir%
return 

#IfWinActive ahk_class Notepad
:*:btw::by the way
Return
ESC::ExitApp