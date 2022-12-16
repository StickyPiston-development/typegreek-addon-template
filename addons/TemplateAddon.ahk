; ------------------ AHK setup -------------------

#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

; ------------------- Config ----------------------

AddonName = TypeGreek Windows test Addon
infoUrl = "https://stickypiston-development.github.io/typegreek-windows/"

; ------------------ Tray menu --------------------

Menu, Tray, Tip , %AddonName%                   ;Change name
Menu, Tray, NoStandard                          ;Remove default options
Menu, Tray, Icon, ./../icon.ico                 ;Set icon
Menu, Tray, Add, Addon Info, Info               ;Addon info
Menu, Tray, Add, Exit addon, Exit               ;Exit

MsgBox, 0, %AddonName%, %AddonName% loaded!     ;Notify user

; ------------------ Addon code --------------------



; ------------------ Menu Code ---------------------

Exit:
ExitApp
return

Info:
MsgBox, 1, %AddonName%, Opening info in the browser (Chrome)
IfMsgBox, OK
    Run, chrome.exe "%infoURL%" " --new-window "
return