#include %A_ScriptDir%\..\globals\scriptconfigs.ahk
#include %A_ScriptDir%\..\helper\utility.ahk

;CHECKBOXES
Iniread, pkmodeskills, %A_ScriptDir%/../ParallaxSettings.ini, EDITS, combo1Text
IniRead, WActivateChecked, %A_ScriptDir%/../ParallaxSettings.ini, CHECKBOXES, WActivateChecked
IniRead, MinorActivateChecked, %A_ScriptDir%/../ParallaxSettings.ini, CHECKBOXES, MinorActivateChecked



;Edits
IniRead, GUIDelay1				, %A_ScriptDir%/../ParallaxSettings.ini, EDITS, GUIDelay1
IniRead, GUIDelay2				, %A_ScriptDir%/../ParallaxSettings.ini, EDITS, GUIDelay2
IniRead, CureSpeed				, %A_ScriptDir%/../ParallaxSettings.ini, EDITS, CureSpeed
IniRead, ThrowingKnifeSpeed		, %A_ScriptDir%/../ParallaxSettings.ini, EDITS, ThrowingKnifeSpeed
IniRead, MagicShieldSpeed		, %A_ScriptDir%/../ParallaxSettings.ini, EDITS, MagicShieldSpeed
IniRead, VampiricTouchSpeed		, %A_ScriptDir%/../ParallaxSettings.ini, EDITS, VampiricTouchSpeed
IniRead, IllusionSpeed			, %A_ScriptDir%/../ParallaxSettings.ini, EDITS, IllusionSpeed
IniRead, ArmCancelSpeed			, %A_ScriptDir%/../ParallaxSettings.ini, EDITS, ArmCancelSpeed
IniRead, BloodDrainSpeed			, %A_ScriptDir%/../ParallaxSettings.ini, EDITS, BloodDrainSpeed
IniRead, DelayBetweenTwoSkills	, %A_ScriptDir%/../ParallaxSettings.ini, EDITS, DelayBetweenTwoSkills
IniRead, pageSpeed, %A_ScriptDir%/../ParallaxSettings.ini, EDITS, pageSpeed

;Hotkeys 
IniRead, CriticalNumber, 	%A_ScriptDir%/../ParallaxSettings.ini, HOTKEYS, CriticalNumber
IniRead, CriticalPage, 		%A_ScriptDir%/../ParallaxSettings.ini, HOTKEYS, CriticalPage
IniRead, VampiricTouchPage, 	%A_ScriptDir%/../ParallaxSettings.ini, HOTKEYS, VampiricTouchPage
IniRead, VampiricTouchNumber, %A_ScriptDir%/../ParallaxSettings.ini, HOTKEYS, VampiricTouchNumber
IniRead, IllusionNumber, 	%A_ScriptDir%/../ParallaxSettings.ini, HOTKEYS, IllusionNumber
IniRead, IllusionPage, 		%A_ScriptDir%/../ParallaxSettings.ini, HOTKEYS, IllusionPage
IniRead, ArmCancelPage, 		%A_ScriptDir%/../ParallaxSettings.ini, HOTKEYS, ArmCancelPage
IniRead, ArmCancelNumber, 	%A_ScriptDir%/../ParallaxSettings.ini, HOTKEYS, ArmCancelNumber
IniRead, ThrowingKnifeNumber, %A_ScriptDir%/../ParallaxSettings.ini, HOTKEYS, ThrowingKnifeNumber
IniRead, MagicShieldPage, 	%A_ScriptDir%/../ParallaxSettings.ini, HOTKEYS, MagicShieldPage
IniRead, ThrowingKnifePage, 	%A_ScriptDir%/../ParallaxSettings.ini, HOTKEYS, ThrowingKnifePage
IniRead, MagicShieldNumber, 	%A_ScriptDir%/../ParallaxSettings.ini, HOTKEYS, MagicShieldNumber
IniRead, ManaNumber, 		%A_ScriptDir%/../ParallaxSettings.ini, HOTKEYS, ManaNumber
IniRead, LightFeetNumber, 	%A_ScriptDir%/../ParallaxSettings.ini, HOTKEYS, LightFeetNumber
IniRead, MinorNumber, 		%A_ScriptDir%/../ParallaxSettings.ini, HOTKEYS, MinorNumber
IniRead, HealthNumber, 		%A_ScriptDir%/../ParallaxSettings.ini, HOTKEYS, HealthNumber
IniRead, CurePage, 			%A_ScriptDir%/../ParallaxSettings.ini, HOTKEYS, CurePage
IniRead, CureNumber, 		%A_ScriptDir%/../ParallaxSettings.ini, HOTKEYS, CureNumber
IniRead, BloodDrainNumber, 	%A_ScriptDir%/../ParallaxSettings.ini, HOTKEYS, BloodDrainNumber
IniRead, BloodDrainPage, 	%A_ScriptDir%/../ParallaxSettings.ini, HOTKEYS, BloodDrainPage

global tempSpeed
tempSpeed := DelayBetweenTwoSkills

global counter = 0

if(UTIL_isStandalone()){
	$Tab::
	
	msgbox %DelayBetweenTwoSkills%
	if(counter == 1){
		
		Loop 2{
			UTIL_CloseScript("minor.parallax")
			UTIL_CloseScript("z.parallax")
		}
		
		counter = 0
		Send {w up}
		Reload	
		Sleep 50
	}else{
		counter = 1
		
		if(ZActivateChecked){
			Run, z.parallax
		}
		
		if(MinorActivateChecked){
			Run, minor.parallax
		}
		
		Loop{
			for i, v in (array := StrSplit(pkmodeskills, ",")) {
				
				nextskill := array[i + 1]
				IniWrite, %nextskill%, %A_ScriptDir%/../ParallaxSettings.ini, Next, Next
				ATT_HitEvaluate(array[i])
			}
		}
	}
	return
	
}else{
	UTIL_notStandalone()
	ExitApp
}


UTIL_DelayAdjustmentForNextSkill(){
	;Checks if the next skill is an extra skill then change the delay because it is not needed
	if(RegExMatch(nextskill, "VT") || RegExMatch(nextskill, "BD") || RegExMatch(nextskill, "IL") || RegExMatch(nextskill, "CP") || RegExMatch(nextskill, "MS") || RegExMatch(nextskill, "KE") || RegExMatch(nextskill, "WN")){
		DelayBetweenTwoSkills := 1
	}else if(RegExMatch(nextskill, "F5") || RegExMatch(nextskill, "F4") || RegExMatch(nextskill, "F3") || RegExMatch(nextskill, "F2") || RegExMatch(nextskill, "F1")){
		DelayBetweenTwoSkills = %pageSpeed%
	}else{
		DelayBetweenTwoSkills := tempSpeed
	}
}

;***************************************************
;	       A T T A C K  F U N C T I O N S 
;***************************************************

ATT_HitEvaluate(PossibleSkill){
	
	;Checks if the text has F in it
	IfInString, PossibleSkill, F
	{
		ATT_PageChange(PossibleSkill)
		return
	}
	
	;Check if the text has some other letters in it
	If(RegExMatch(PossibleSkill, "^[a-zA-Z]+$"))
	{
		if(WActivateChecked){
			Send {w up}
		}	
		ATT_ExtraSkillAssesment(PossibleSkill)
		return
	}
	
	ATT_Hit(PossibleSkill)	
	
	return
	
}

ATT_PageChange(Page){ 
	
	previousf := Page
	
	IniWrite, %previousf%, %A_ScriptDir%/../ParallaxSettings.ini, Page, Page
	
	Loop 2{
		Send {%Page% down}
		Sleep 55
		Send {%Page% up}
		Sleep 55
	}
	return
}

ATT_ExtraSkillAssesment(ExtraSkill){
	
	;Delay 1
	if (RegExMatch(ExtraSkill, "GCO")){
		
		Sleep %GUIDelay1%
		return
	}
	
	;Delay 2
	if (RegExMatch(ExtraSkill, "GCX")){
		
		Sleep %GUIDelay2%
		return
	}
	
	;Vampiric Touch
	if (RegExMatch(ExtraSkill, "V")){
		
		ATT_ExtraHit(VampiricTouchPage, VampiricTouchNumber, VampiricTouchSpeed)
		return
	}
	
	;Blood Drain
	if (RegExMatch(ExtraSkill, "B")){
		
		ATT_ExtraHit(BloodDrainPage, BloodDrainNumber, BloodDrainSpeed)
		return
	}
	
	;Illusion
	if (RegExMatch(ExtraSkill, "I")){
		
		ATT_ExtraHit(IllusionPage, IllusionNumber, IllusionSpeed)
		
		return
	}
	
	;Critical Point
	if (RegExMatch(ExtraSkill, "C")){
		
		Sleep 50
		
		Loop 2{
			Send {%CriticalPage% down}
			Sleep 25
			Send {%CriticalPage%  up}
			Sleep 25
		}
		
		
		Loop 2{
			Send {%CriticalNumber% down}
			Sleep 25
			Send {%CriticalNumber%  up}
			Sleep 25
		}
		
		;If the next skill is not a page change then turn back to the previously pressed page
		IfNotInString, nextskill, F
		{
			Loop 2{
				Send {%previousf% down}
				Sleep 25
				Send {%previousf%  up}
				Sleep 25
			}
		}
		
		
		Sleep 80
		return
	}
	
	;Magic Shield
	if (RegExMatch(ExtraSkill, "M")){
		ATT_ExtraHit(MagicShieldPage, MagicShieldNumber, MagicShieldSpeed)
		return
	}
	
	;Throwing Knife
	if (RegExMatch(ExtraSkill, "K")){
		ATT_ExtraHit(ThrowingKnifePage, ThrowingKnifeNumber, ThrowingKnifeSpeed)
		return
	}
	
	;Weapon Cancellation
	if (RegExMatch(ExtraSkill, "W")){
		
		ATT_ExtraHit(ArmCancelPage, ArmCancelNumber, ArmCancelSpeed)
		return
	}
}

ATT_ExtraHit(Page, Number, Speed){
	
	Loop 2{
		Send, {%Page% down}
		Sleep 15
		Send, {%Page% up}
		Sleep 15
	}
	
	Loop 3{
		Send, {%Number% down}
		Sleep 15
		Send, {%Number% up}
		Sleep 15
	}
	
	Sleep, Speed
	
	Send, {w down}
	Sleep 15
	Send, {w up}
	
}

ATT_Hit(Key){
	
	if(WActivateChecked){
		Sleep 15
		Send {w down}
		Sleep 15
	}
	
	
	
	Loop 3{
		Send, {%Key% down}
		Sleep 17
		Send, {%Key% up}
		Sleep 17
	}
	
	Sleep 15
	
	Loop 8{
		
		Send, {r down}
		Sleep 17
		Send, {r up}
		Sleep 17
		
	}
	
	
	UTIL_DelayAdjustmentForNextSkill()
	
	Sleep, DelayBetweenTwoSkills
	
	if(WActivateChecked){
		Sleep 15
		Send {w up}
		Sleep 1
	}
}