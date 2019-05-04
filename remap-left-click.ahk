#SingleInstance
#InstallKeybdHook
#InstallMouseHook

SetTimer, MoveTimer, 16
return

MoveTimer:
    IfWinActive, Titan Quest Anniversary Edition    ; change this to your correct version/title
    {
        GetKeyState, state, Space                   ; change Space to whatever key to want
        click := true
        if state = D
        {   
            click := false
            Click down
        }
        else if state = U
        {
            click := true
            Click up
        }
    }
return