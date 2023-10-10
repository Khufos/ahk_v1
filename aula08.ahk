#SingleInstance,Force

IniRead, lastFolder, folderpath.ini, LastInfo, path

SelectedDir1:= lastFolder ;for method 1
SelectedDir2:= lastFolder ;for method 2
SelectedDir3:= lastFolder ;for method 3

;Method 1

F3::	
	KeyWait, F3			; wait release
	KeyWait, F3, D T0.2	; and pressed again within 0.2 seconds
	if ErrorLevel { ; timed-out (only a single press)
		Try Run, %SelectedDir1%
	} else {
	hWnd := WinExist("A")
	WinGetTitle, FolderName, ahk_id %hWnd%
		for obj in ComObjCreate("Shell.Application").Windows
		{
			;~ msgbox % obj.Document.Folder.Title ;display open window one by one
			if (obj.Document.Folder.Title = FolderName)
				break
		}
	SelectedDir1 := obj.Document.Folder.Self.Path
	Tooltip, %FolderName%
	Sleep 1000
	Tooltip,
	} 	
return


;Method 2 (workaround for folders with same name)

F4::	
	KeyWait, F4			; wait release
	KeyWait, F4, D T0.2	; and pressed again within 0.2 seconds
	if ErrorLevel { ; timed-out (only a single press)
		Run, %SelectedDir2%
	} else {
	hWnd := WinExist("A")
	Send !d{ESC}
	WinGet, cList, ControlList, ahk_id %hWnd%
	ControlGet, SelectedDir2, Line, 1, Edit1, ahk_id %hWnd%
	StringGetPos, FolderNameStart, SelectedDir2, \, R1
	FolderName := SubStr(SelectedDir2, FolderNameStart + 2, StrLen(SelectedDir2))
	Tooltip, %FolderName%
	Sleep 1000
	Tooltip,
	} 
return


;Method 3 (uses active folder hwnd)

F6::	
	KeyWait, F6			; wait release
	KeyWait, F6, D T0.2	; and pressed again within 0.2 seconds
	if ErrorLevel { ; timed-out (only a single press)
		Try Run, %SelectedDir3%
	} else {
	hWnd := WinExist("A")
		for obj in ComObjCreate("Shell.Application").Windows
			if (obj.hwnd==hwnd)
				SelectedDir3 := obj.Document.Folder.Self.Path
	Try Tooltip, % obj.Document.Folder.Title
	Sleep 1000
	Tooltip,
	IniWrite, %SelectedDir3%, folderpath.ini, LastInfo, path
	}
return

+ESC::ExitApp