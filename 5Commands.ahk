; Shift + L or Shift + R to adjust volume and move the window
+L::MoveWindow("left")
+R::MoveWindow("right")

MoveWindow(direction) {
    ; Get the active window's ID
    WinGet, activeWindow, ID, A

    ; Get the current screen's width and height
    SysGet, screenWidth, 78
    SysGet, screenHeight, 79

    ; Define the window's width as half of the screen width, full screen height
    windowWidth := screenWidth / 2
    windowHeight := screenHeight

    ; Move and resize the active window based on the direction
    if (direction = "left") {
        WinMove, ahk_id %activeWindow%, , 0, 0, % windowWidth, % windowHeight
    } else if (direction = "right") {
        WinMove, ahk_id %activeWindow%, , % windowWidth, 0, % windowWidth, % windowHeight
    }
}


; 2. Quickly mute/unmute the system volume
+M:: ; Shift + M
SoundSet, +0, , mute ; Toggle mute
return



; Shift + F to rename the selected file or folder
+F::
{
    ; Send the F2 key, which is the default shortcut to rename in File Explorer
    Send, {F2}
    return
}

; Shift + P to open the properties of the selected file or folder
+P::
{
    ; Send the Alt + Enter key combination, which opens the properties window
    Send, !{Enter}
    return
}

; Shift + N to create a new folder in File Explorer
+N::
{
    ; Send the keyboard shortcut for creating a new folder (Ctrl + Shift + N)
    Send, ^+n
    return
}



