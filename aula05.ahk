#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

#If MouseIsOver("ahk_class WordPadClass")

LButton::Send, Left`n
RButton::Send, Right`n
 
MouseIsOver(WinTitle)
{
    MouseGetPos,,, ID
    return WinExist(WinTitle " ahk_id "  ID)


}
ESC::ExitApp
return



