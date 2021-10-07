#include %A_ScriptDir%\..\globals\scriptconfigs.ahk
#include %A_ScriptDir%\..\helper\utility.ahk

IniRead, LightFeetNumber, %A_WorkingDir%/Lib/ParallaxSettings.ini, HOTKEYS, LightFeetNumber

if(UTIL_isStandalone()){
	
	~$LButton::
	now := A_TickCount
	while GetKeyState("LButton", "P"){
		
		if (A_TickCount-now > 130)
		{
			Send {%LightFeetNumber% down}
			Sleep 25
			Send {%LightFeetNumber%  up}
			
			Sleep 500	
		}
	}
	return
	
	~$w::
	now := A_TickCount
	while GetKeyState("w", "P"){
		
		if (A_TickCount-now > 130)
		{
			Send {%LightFeetNumber% down}
			Sleep 25
			Send {%LightFeetNumber%  up}
			
			Sleep 500	
		}
	}
	return	
	
}else{
	UTIL_notStandalone()
	ExitApp
}