#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%


^q::
if(keyPressCount > 0)
    {
        keyPressCount +=1
    }else
    {
        keyPressCount :=1
    
    }

    ToolTip, % keyPressCount
    SetTimer, KeyPressMonitor, 300
    return 


    keyPressMonitor:
    if(keyPressCount = 1){
        Run,calc.exe
    }else if(keyPressCount = 2)
    {
        Run,cmd.exe
    } else if(keyPressCount > 3)
    {
        Run,chrome.exe
    }
    keyPressCount :=0
    SetTimer, KeyPressMonitor, Off
    Tooltip,
    return
    ESC::ExitApp
    return