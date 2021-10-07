#include %A_ScriptDir%\..\globals\scriptconfigs.ahk
#include %A_ScriptDir%\..\helper\utility.ahk

global counter = 0

Iniread, Pkconvskills, %A_WorkingDir%/../ParallaxSettings.ini, EDITS, Pkconvskills
IniRead, ZActivateChecked, %A_WorkingDir%/../ParallaxSettings.ini, CHECKBOXES, ZActivateChecked


if(UTIL_isStandalone()){

	$r:: 
	
    if(ZActivateChecked){
        run, z.parallax
    }

		for i, v in (array := StrSplit(Pkconvskills, ",")) {
			Hit(array[i])
			Sleep 10
		}
		
		R()
       
        WinKill, z.parallax
	   UTIL_CloseScript("z.parallax")
return
}else{
	UTIL_notStandalone()
	ExitApp
}

Hit(num){
	Send {%num% down}
	Sleep 15
	Send {%num% up}
}

R(){
	Send {r down}
	Sleep 15
	Send {r up}
	Sleep 15
	Send {r down}
	Sleep 15
	Send {r up}
	Sleep 15
}

Return
