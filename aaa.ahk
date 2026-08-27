#NoEnv
#SingleInstance Force
SetBatchLines -1

toggle := false

; Press '1' to start the loop
1::
    toggle := true
    while (toggle)
    {
        Click                   ; Left click at current cursor position
        Sleep, 10               ; Short delay to ensure focus
        Send, ^v                ; Paste (Ctrl + V)
        Sleep, 10
        Send, {Enter}           ; Press Enter
        Sleep, 0              ; Pause between loops (adjust in milliseconds if needed)
    }
return

; Press '2' to stop the loop
2::
    toggle := false
return