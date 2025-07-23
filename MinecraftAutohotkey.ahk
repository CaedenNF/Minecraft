#Requires AutoHotkey v2.0
#SingleInstance Force
InstallMouseHook()

; Configuration
minDelay := 45  ; Minimum delay between clicks in milliseconds
maxDelay := 70 ; Maximum delay between clicks in milliseconds

#HotIf WinActive("ahk_class GLFW30")
; Main loop for Mouse Button 5
*XButton2::
    {
        while GetKeyState("XButton2", "P")
        {
            Click
            Sleep Random(minDelay, maxDelay)
        }
        return
    }
; Main loop for Mouse Button 4
*XButton1::
    {
        while GetKeyState("XButton1", "P")
        {
            Click "Right"
            Sleep Random(minDelay, maxDelay)
        }
        return
    }
#HotIf
