#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

myvar := "F2"

Hotkey, %myvar%, mylabel
return

myLabel:
msgbox you pressed %myvar%
ESC::Exitapp

return 