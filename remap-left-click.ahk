#SingleInstance
#InstallKeybdHook
#InstallMouseHook
#KeyHistory 1

SetTimer, MoveTimer, 16
return

MoveTimer:
    IfWinActive, Titan Quest Anniversary Edition    ; change this to your correct version/title
    {
        GetKeyState, state, Space                   ; change Space to whatever key to want
        if state = D
        {   
            Click down
        }
        else
        {   
            if !GetKeyState("LButton", "P")
            {
                Click up
            }
        }
    }
return