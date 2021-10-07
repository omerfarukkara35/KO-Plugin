#include %A_ScriptDir%\..\globals\scriptconfigs.ahk
#include %A_ScriptDir%\..\helper\utility.ahk

global DelayButtons = 34

global MinorNumber
global HealthNumber
global ManaNumber
global DelayBetweenMM
global counterMinor = 1
global counter = 1

IniRead, MinorButton, %A_WorkingDir%/../ParallaxSettings.ini, HOTKEYS, MinorNumber
IniRead, HealthButton, %A_WorkingDir%/../ParallaxSettings.ini, HOTKEYS, HealthNumber            
IniRead, ManaButton, %A_WorkingDir%/../ParallaxSettings.ini, HOTKEYS, ManaNumber
IniRead, DelayBetweenMM, %A_WorkingDir%/../ParallaxSettings.ini, SLIDERS, MinorSlider

if(UTIL_isStandalone()){
	
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
	
	return
	
}else{
	MsgBox, 0x10, Hata!, Lütfen minor.parallax'ı bu şekilde çalıştırmaya çalışmayın. 
	Run, https://discord.gg/UZ6zrN4kCw
	ExitApp
}


~$V::
counterMinor += 1
return
