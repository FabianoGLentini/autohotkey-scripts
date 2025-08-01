; Discrete Math Hotkeys with Toggle (no prefix)
; Toggle with Ctrl + Alt + Shift + M

mathActive := true  ; Start with math hotkeys enabled

^!+m::  ; Ctrl + Alt + Shift + M toggle
    mathActive := !mathActive
    MsgBox, 64, Math Hotkeys, % Format("Math hotkeys are now {}", (mathActive ? "ENABLED ✅" : "DISABLED ❌"))

return

; -------- Hotstrings --------

#Hotstring B0  ; Prevents automatically backspace the trigger

::sum::
if (mathActive)
    Send, ∑{Space} 
else
    Send, sum{Space}
return

::prod::
if (mathActive)
    Send, ∏{Space}
else
    Send, prod{Space}
return

::forall::
if (mathActive)
    Send, ∀{Space} 
else
    Send, forall{Space}
return

::exists::
if (mathActive)
    Send, ∃{Space} 
else
    Send, exists{Space}
return

::in::
if (mathActive)
    Send, ∈{Space} 
else
    Send, in{Space}
return

::empty::
if (mathActive)
    Send, ∅{Space} 
else
    Send, empty{Space}
return

::and::
if (mathActive)
    Send, ∧{Space} 
else
    Send, and{Space}
return

::or::
if (mathActive)
    Send, ∨{Space} 
else
    Send, or{Space}
return

::not::
if (mathActive)
    Send, ¬{Space} 
else
    Send, not{Space}
return

::implies::
if (mathActive)
    Send, →{Space} 
else
    Send, implies{Space}
return

::iff::
if (mathActive)
    Send, ↔{Space} 
else
    Send, iff{Space}
return

::!=::
if (mathActive)
    Send, ≠{Space} 
else 
    Send, !={Space}
return


; -------- Terminate Script --------
Esc::

    MsgBox, Exiting MathNotationShortcuts.ahk script!
        ExitApp   

Return
