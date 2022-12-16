#SingleInstance, force
Loop .\addons\*.tga {   
    Run, .\AutoHotkeyU32.exe addons\%A_LoopFileName%
}

esc::
DetectHiddenWindows, On
SetTitleMatchMode, 2
Loop .\addons\*.tga {   
    WinClose addons\%A_LoopFileName%
}
ExitApp