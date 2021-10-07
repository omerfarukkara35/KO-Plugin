;***************************************************
;	        S C R I P T S  C O N F I G S 
;***************************************************
#SingleInstance,Force
Process, Priority, , H
SetDefaultMouseSpeed, 1
CoordMode, Mouse, Screen
#NoTrayIcon
SetWorkingDir %A_ScriptDir%

Iniread, x, ParallaxSettings.ini, coords, X
Iniread, y, ParallaxSettings.ini, coords, Y


IniRead, MasterPID, ParallaxSettings.ini, Config, SkillTime
IniRead, NameID, ParallaxSettings.ini, Config, SkillNameValue

WinGetTitle, Title, ahk_pid %MasterPID%

if(Title == NameID){
$t::
	
	MouseGetPos userX, userY
	
	Loop 5{
		SendInput, {LButton Down}
        Sleep 15
	}
	
	MouseMove, %x%, %y%
	Sleep 50
	MouseMove, userX, userY
	
	Loop 5{
		SendInput, {LButton Up}
        Sleep 15
	}
    
     Sleep 15
    
    SendInput, {LButton Down}
        Sleep 15
    SendInput, {LButton Up}
	return
}else{
	MsgBox, 0x10, Hata!, Lütfen slide.parallax'ı bu şekilde çalıştırmaya çalışmayın. 
	Run, https://discord.gg/UZ6zrN4kCw
	ExitApp
}