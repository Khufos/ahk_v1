#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%
;the basics
::hi:: requires you the type enter for hotstring to run
:*:hi:: runs the hotstring without the enter

;autocomplete
:*:juho@::juho@emaildomain.com
:*:juho#::852-1234-5678
:*:juhozoom::123-456-7890

;autocorrect
;https://www.autohotkey.com/download/AutoCorrect.ahk

;accented words and special symbols
;if you see question marks instead of the special symbols... File > Encoding > UTF-8 with BOM
:*:fiance::fiancé
:*:entree::entrée
:*:cafe::café
::(c)::© ;copyrights
::(r)::® ;registered trademark
::(tm)::™ ;trademark
:*:*`t::•`t
:*:->::→ ;►
:*:<-::← ;◄
!Up::Send ↑ ;▲
!Down::Send ↓ ;▼

;run programs
:*:@Chrome:: ;type @Chrome to launch chrome
run, chrome.exe

:C*:@CalC:: ;case sensitive hotstring
run, calc.exe

;run sub
::mysub::
gosub mySub
return

mySub:
msgbox you
return

ESC::ExitApp
