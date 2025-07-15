#Requires AutoHotkey v2.0
#SingleInstance force
; =======================================================================================
; ==================================== LOAD VARIABLES ===================================
; =======================================================================================
devMode := 1

WINDOW_WIDTH := 371
WINDOW_HEIGHT :=  400
WINDOW_X := devMode ? -600 : 0
WINDOW_Y := devMode ? 160 : 0
FONT_SIZE := 14

; =======================================================================================
; ===================================== CREATE GUI ======================================
; =======================================================================================

myGui := Gui("+0x40000") ; resizable
myGui.MarginX := 10
myGui.Marginy := 10
myGui.Title := devMode ? "easyQC - dev mode" : "easyQC"
myGui.SetFont("s" . FONT_SIZE, "Verdana")
myGui.SetFont(, "Courier")
myGui.SetFont(, "Courier New")

statusBar := myGui.AddStatusBar("xs", "")
statusBar.SetFont("s10")
myGui.OnEvent("Close", (*) => ExitApp)
myGui.Show(Format(devMode ? "w{1} h{2} x{3} y{4}" : "w{1} h{2}",
	WINDOW_WIDTH, WINDOW_HEIGHT, WINDOW_X, WINDOW_Y))

; =======================================================================================
; ===================================== FUNCTIONS =======================================
; =======================================================================================

setupGuiAppearance() {
	myGui.Title := devMode ? "easyQC - dev mode" : "easyQC"
	myGui.SetFont("s" . FONT_SIZE, "Verdana")
	myGui.SetFont(, "Courier")
	myGui.SetFont(, "Courier New")
}

