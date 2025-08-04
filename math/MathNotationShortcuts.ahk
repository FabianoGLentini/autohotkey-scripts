; Start with math hotkeys enabled
global mathActive := true
createOverlay()


^!+m::toggleMath()  ; Ctrl + Alt + Shift + M toggle
    

; Hotstrings when mathActive is true
#If mathActive
::sum::∑
::prod::∏
::forall::∀
::exists::∃
::member::
::excludes::∉
::empty::∅
::and::∧
::or::∨
::not::¬
::implies::→
::iff::↔
::!=::≠
::int::ℤ
#If

; Exit on Escape
Esc::
    Gui, Destroy
    MsgBox, Exiting Math Notation Shortcuts ahk script!
    ExitApp   
return

; Toggle math hotkeys on or off and swaps indicator icon accordingly
toggleMath() {
    mathActive := !mathActive
    updateOverlay()
}

; Overlay GUI
createOverlay() {
    global
    Gui, +AlwaysOnTop -Caption +ToolWindow +E0x20
    Gui, Margin, 10, 10
    Gui, Font, s14, Segoe UI
    Gui, Add, Text, vStatusText cGreen, ✅
    x := A_ScreenWidth - 50
    y := 10
    Gui, Show, x%x% y%y% NoActivate
}

updateOverlay() {
    global mathActive
    color := mathActive ? "Green" : "Red"
    icon := mathActive ? "✅" : "❌"

    GuiControl, Hide, StatusText
    GuiControl,, StatusText, %icon%
    
    GuiControl, Show, StatusText
    Gui, Font, c%color%
    GuiControl, Font, StatusText
}



