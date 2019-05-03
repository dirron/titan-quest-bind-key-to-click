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
            if click
            {
                click := false
                MouseClick, left,,, 1, 0, D
            }
        }
        if state = U
        {
            click := true
            MouseClick, left,,, 1, 0, U
        }
    }
return