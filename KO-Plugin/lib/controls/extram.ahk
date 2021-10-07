#include %A_ScriptDir%\..\globals\scriptconfigs.ahk
#include %A_ScriptDir%\..\helper\utility.ahk


;-----------------------------------------------------------------------------

global DelayButtons = 34

IniRead, MinorButton, %A_WorkingDir%/../ParallaxSettings.ini, HOTKEYS, MinorNumber
IniRead, HealthButton, %A_WorkingDir%/../ParallaxSettings.ini, HOTKEYS, HealthNumber            
IniRead, ManaButton, %A_WorkingDir%/../ParallaxSettings.ini, HOTKEYS, ManaNumber
IniRead, DelayBetweenMM, %A_WorkingDir%/../ParallaxSettings.ini, SLIDERS, MinorSlider

global counter = 0

if(UTIL_isStandalone()){
	
	$"::
	
	if(counter == 1){
		
		Reload
		counter = 0
	}else{
		
		counter=1
		
		Loop{
			
			if(Mod(counterMinor, 2) == 0){
				Send {%MinorButton%  down}
				Sleep, %DelayButtons%
				Send {%MinorButton%  up}
				
				Sleep, %DelayButtons%
				
				Send {%HealthButton%  down}
				Sleep, %DelayButtons%
				Send {%HealthButton%  up}
				
				Sleep %DelayBetweenMM%
				
			}else{
				
				Send {%MinorButton% down}
				Sleep, %DelayButtons%
				Send {%MinorButton%  up}
				
				Sleep, %DelayButtons%
				
				Send {%ManaButton%  down}
				Sleep, %DelayButtons%
				Send {%ManaButton%  up}
				
				Sleep %DelayBetweenMM%
			}
			
		}
	}
	return
	
	
}else{
	UTIL_notStandalone()
	ExitApp
}


~$V::
counterMinor += 1
return
