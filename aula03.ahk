#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%


RButton::msgbox botao direito
MButton::msgbox "botao do meio"
WheelUp::msgbox "rolamento do mouse pra cima"
WheelDown::msgbox "rolamento do mouse para baixo"
ESC::ExitApp

return