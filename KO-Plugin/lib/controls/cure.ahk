#include %A_ScriptDir%\..\globals\scriptconfigs.ahk
#include %A_ScriptDir%\..\helper\utility.ahk

IniRead, CurePage, %A_WorkingDir%/../ParallaxSettings.ini, HOTKEYS, CurePage
IniRead, CureNumber, %A_WorkingDir%/../ParallaxSettings.ini, HOTKEYS, CureNumber
IniRead, CureSpeed, %A_WorkingDir%/../ParallaxSettings.ini, EDITS, CureSpeed


if(UTIL_isStandalone()){
	$g::
	IniRead, NextSkill, ParallaxSettings.ini, Next, Next
	Iniread, PreviousF, ParallaxSettings.ini, Page, Page
	
	Loop 2{
		Sleep 15
		Send {w  up}
	}
	
	Loop 2{
		Send {r  down}
		DllCall("Sleep","UInt", 15)
		Send {r  up}
		DllCall("Sleep","UInt", 15)
	}
	
	Loop 2{
		PostMessage, 0x111, 65306,,, pkmod.parallax
		PostMessage, 0x111, 65306,,, combo1.parallax
		PostMessage, 0x111, 65306,,, combo2.parallax
		PostMessage, 0x111, 65306,,, pkconv.parallax
	}
	
	Loop 6{
		Send {%CurePage%  down}
		Sleep, 15
		Send {%CurePage%  up}
		Sleep, 15
	}
	
	Sleep, 34
	
	Loop 6{
		Send {%CureNumber%  down}
		Sleep, 15
		Send {%CureNumber%  up}
		Sleep, 15
	}
	
	DllCall("Sleep","UInt", CureSpeed)
	
	Send {w  down}
	DllCall("Sleep","UInt", 25)
	Send {w up}
	
	IfNotInString, NextSkill, F
	{
		Loop 2{
			Send {%PreviousF%  down}
			DllCall("Sleep","UInt", 15)
			Send {%PreviousF%  up}
			DllCall("Sleep","UInt", 15)
		}
		
	}
	
	Loop 2{
		PostMessage, 0x111, 65306,,, pkmod.parallax
		PostMessage, 0x111, 65306,,, combo1.parallax
		PostMessage, 0x111, 65306,,, combo2.parallax
		PostMessage, 0x111, 65306,,, pkconv.parallax
	}
	
	return
}else{
	UTIL_notStandalone()
	ExitApp
}