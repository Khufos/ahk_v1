;Watch the YouTube video in the following link for guidance:
;ENG: https://youtu.be/SOvyZPUc1gE
;KOR: https://youtu.be/7qBfQOXCYi8

#SingleInstance, Force




;long press double hotkey
~Alt & a::
KeyWait, a, T1
If ErrorLevel   
	Run, Chrome.exe
return

;tab/short press hotkey with a long press option to abort launch
~RAlt::
KeyWait, RAlt, T2
If ErrorLevel
{
KeyWait, RAlt, T10 ;suppresses hotkey repeating too quickly
} else {
Run, Chrome.exe
}