

UTIL_CloseScript(name) {
	WinKill %name%
	WinWaitClose %name%
	if(ErrorLevel){
		WinKill %name%
	}
	return
}

UTIL_isChecked(hwnd) {  
	GuiControlGet, checked, , % hwnd
	return checked
}

UTIL_CloseEverything(){
	UTIL_CloseScript("lightfeet.parallax")
	UTIL_CloseScript("extram.parallax")
	UTIL_CloseScript("combo1.parallax")
	UTIL_CloseScript("combo2.parallax")
	UTIL_CloseScript("z.parallax")
	UTIL_CloseScript("minor.parallax")
	UTIL_CloseScript("town.parallax")
	UTIL_CloseScript("m20.parallax")
	UTIL_CloseScript("cure.parallax")
	UTIL_CloseScript("pkconv.parallax")
	UTIL_CloseScript("slide.parallax")
	UTIL_CloseScript("m20.parallax")
}


UTIL_Print(printwhat := "", duration := 400){
	ToolTip %printwhat%
	Sleep %duration%
	ToolTip
}

UTIL_isStandalone(){
	
	IniRead, UniqueID, %A_ScriptDir%\..\ParallaxSettings.ini, PROGRAM_SPEC, ID
	IniRead, UniquePID, %A_ScriptDir%\..\ParallaxSettings.ini, PROGRAM_SPEC, PID
	
	WinGetTitle, testID, ahk_pid %UniquePID% 
	
	if(testID == UniqueID){
		return true
	}else{	
		return false
	}
}

UTIL_notStandalone(){
	MsgBox, 0x10, Hata!, Makrolar tek olarak çalışmaz!
	;Run, https://discord.gg/UZ6zrN4kCw
	UTIL_CloseEverything()
}