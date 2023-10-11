#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

Gui, Add, Text,, Please enter your name:
Gui, Add, Edit, vName
Gui, Show