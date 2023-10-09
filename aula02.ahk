#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%


IfWinActive, ahk_class, Notepad
    Run, notepad.exe    
WinWait, ahk_class Notepad
WinActivate