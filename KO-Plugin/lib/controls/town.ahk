#include %A_ScriptDir%\..\globals\scriptconfigs.ahk
#include %A_ScriptDir%\..\helper\utility.ahk

if(UTIL_isStandalone()){
	$f::
	
	Loop 2{
		PostMessage, 0x111, 65306,,, pkmod.parallax
		PostMessage, 0x111, 65306,,, vsmod.parallax
		PostMessage, 0x111, 65306,,, lightfeet.parallax
		PostMessage, 0x111, 65306,,, mminor.parallax
		PostMessage, 0x111, 65306,,, minor.parallax
		PostMessage, 0x111, 65306,,, z.parallax
		PostMessage, 0x111, 65306,,, extram.parallax
		PostMessage, 0x111, 65306,,, pkconv.parallax
	}
	
	Sleep, 50
	
	Send {enter  down}
	Sleep, 15
	Send {enter  up}
	
	Sleep, 75
	
	Send {/  down}
	Sleep, 15
	Send {/  up}
	
	Sleep, 50
	
	Send {t  down}
	Sleep, 15
	Send {t  up}
	
	Sleep, 15
	
	Send {o  down}
	Sleep, 15
	Send {o  up}
	
	Sleep, 15
	
	Send {w  down}
	Sleep, 15
	Send {w  up}
	
	Sleep, 15
	
	Send {n  down}
	Sleep, 15
	Send {n  up}
	
	Sleep, 15
	
	Send {enter  down}
	Sleep, 15
	Send {enter  up}
	
	Loop 2{
		PostMessage, 0x111, 65306,,, pkmod.parallax
		PostMessage, 0x111, 65306,,, vsmod.parallax
		PostMessage, 0x111, 65306,,, lightfeet.parallax
		PostMessage, 0x111, 65306,,, mminor.parallax
		PostMessage, 0x111, 65306,,, minor.parallax
		PostMessage, 0x111, 65306,,, z.parallax
		PostMessage, 0x111, 65306,,, extram.parallax
		PostMessage, 0x111, 65306,,, pkconv.parallax
	}
	
	return
}else{
UTIL_notStandalone()
ExitApp
}
