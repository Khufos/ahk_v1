#SingleInstance,Force

Gui, Add, Edit, x0 y0 w120 h20 vmyVar
Gui, Add, Button, y+0 w120 h20 gUpdate_Hotkey, Update Hotkey
Gui, Add, Button, y+0 w120 h20 gRemove_Hotkey, Remove Hotkey
Gui, -MinimizeBox
Gui, Show, w120 h60,
return
Gui, -MinimizeBox
Gui, show, w120 h60,
return


Update_hotkey:
Gui, Submit,NoHide
Hotkey, `~%myVar% , myLabela
msgbox Hotkey Update!
return

myLabel:
msgbox Hotkey worked!
return

Remove_Hotkey:
Gui, Submit,NoHide
Hotkey, `~%myVar%,Off
msgbox Hotkey removed!
return

ESC::ExitApp
return