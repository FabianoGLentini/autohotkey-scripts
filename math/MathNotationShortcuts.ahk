; Discrete Math Hotkeys with Toggle (no prefix)
; Toggle with Ctrl + Alt + Shift + M

mathActive := true  ; Start with math hotkeys enabled

^!+m::  ; Ctrl + Alt + Shift + M toggle
    mathActive := !mathActive
    MsgBox, 64, Math Hotkeys, % Format("Math hotkeys are now {}", (mathActive ? "ENABLED ✅" : "DISABLED ❌"))

return

; -------- Hotstrings --------

#If (mathActive)

::sum::∑{Space}
::prod::∏{Space}
::forall::∀{Space}
::exists::∃{Space}
::in::∈{Space}
::empty::∅{Space}
::and::∧{Space}
::or::∨{Space}
::not::¬{Space}
::implies::→{Space}
::iff::↔{Space}
::!=::≠{Space}

#If  ; Reset context back to normal


; -------- Terminate Script --------
Esc::

    MsgBox, Exiting MathNotationShortcuts.ahk script!
        ExitApp   

Return
