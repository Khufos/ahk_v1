#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

Menu, MyMenu, Add,Open Desktop Folder,MenuHandler
Menu, MyMenu, Add,Open Downloads Folder,MenuHandler
Menu, MyMenu, Add,Run Calculator,MenuHandler
Menu, MyMenu, Add,Run Chrome, MenuHandler

return

^z::
    Menu,MyMenu,Show
return
MenuHandler:
    if(A_ThisMenuItempos = 1)
    {
        Run,%A_Desktop%
    }else if(A_ThisMenuItempos = 2 ){
        Run, %A_ScriptDir%
    }else if(A_ThisMenuItempos = 3){
        Run, calc.exe
    }else if(A_ThisMenuItempos = 4){
        Run, Chrome.exe
    }

return
ESC::ExitApp
return