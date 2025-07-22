#Requires AutoHotkey v2.0
#SingleInstance Force

; Configuration
minDelay := 45  ; Minimum delay between clicks in milliseconds
maxDelay := 70 ; Maximum delay between clicks in milliseconds

#HotIf WinActive("ahk_class GLFW30")

; For Mouse Button 5 (left clicks)
leftClicking := false
*XButton2::
{
    global leftClicking := true
    while leftClicking
    {
        Click
        Sleep Random(minDelay, maxDelay)
    }
}
*XButton2 up:: global leftClicking := false

; For Mouse Button 4 (right clicks)
rightClicking := false
*XButton1::
{
    global rightClicking := true
    while rightClicking
    {
        Click "Right"
        Sleep Random(minDelay, maxDelay)
    }
}
*XButton1 up:: global rightClicking := false

#HotIf
