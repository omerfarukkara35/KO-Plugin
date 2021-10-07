#include %A_ScriptDir%\..\globals\scriptconfigs.ahk
#include %A_ScriptDir%\..\helper\utility.ahk



IniRead, ArmCancelPage, %A_WorkingDir%/../ParallaxSettings.ini, HOTKEYS, ArmCancelPage
IniRead, ArmCancelNumber, %A_WorkingDir%/../ParallaxSettings.ini, HOTKEYS, ArmCancelNumber
IniRead, ArmCancelSpeed, %A_WorkingDir%/../ParallaxSettings.ini, EDITS, ArmCancelSpeed

if(UTIL_isStandalone()){
	$space::
	
	IniRead, NextSkill, %A_WorkingDir%/../ParallaxSettings.ini, Next, Next
	Iniread, PreviousF, %A_WorkingDir%/../ParallaxSettings.ini, Page, Page
	
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
		PostMessage, 0x111, 65306,,, combo1.parallax
		PostMessage, 0x111, 65306,,, combo2.parallax
		PostMessage, 0x111, 65306,,, pkconv.parallax
	}
	
	Loop 6{
		Send {%ArmCancelPage%  down}
		Sleep 15
		Send {%ArmCancelPage%  up}
		Sleep 15
	}
	
	Sleep, 20
	
	Loop 6{
		Send {%ArmCancelNumber%  down}
		Sleep 15
		Send {%ArmCancelNumber%  up}
		Sleep 15
	}
	
	Sleep, %ArmCancelSpeed%
	
	Send {w  down}
	Sleep 15
	Send {w up}
	
	
	IfNotInString, NextSkill, F
	{
		Loop 2{
			Send {%PreviousF%  down}
			Sleep 15
			Send {%PreviousF%  up}
			Sleep 15
		}
		
	}
	Loop 2{
		PostMessage, 0x111, 65306,,, combo2.parallax
		PostMessage, 0x111, 65306,,, combo1.parallax
		PostMessage, 0x111, 65306,,, pkconv.parallax
	}
	return
	
}