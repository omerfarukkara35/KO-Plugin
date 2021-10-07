

;-------------------------- G U I  B U T T O N  F U N C T I O N S --------------------------

Slider(CtrlHwnd, GuiEvent, EventInfo, ErrLevel := "") {
	Loop 5 {
		GuiControlGet, MinorSlider
		Gui Add, Text, x715 y376 w120 h23 +0x200, %MinorSlider%
		IniWrite, %MinorSlider%, %A_WorkingDir%/Lib/ParallaxSettings.ini, SLIDERS, MinorSlider
	}
}

combo1WriteButton(CtrlHwnd, GuiEvent, EventInfo, ErrLevel := "") {
	pressed1 := !pressed1
	if(pressed1){
		UTIL_CloseEverything()
		Suspend, On
		SetCapsLockState,AlwaysOn
		GuiControl, Enable,  combo1Text
		GuiControl, Disable,  combo2WriteButton
		GuiControl, Focus, combo1Text
		GuiControl, Disable, startButton
		GuiControl, Disable, saveButton
		GuiControl,, combo1WriteButton, Yazmayı Durdur
		return
	}else{
		Suspend, Off
		SetCapsLockState, off
		GuiControl, Enable,  startButton
		GuiControl, Enable,  combo2WriteButton
		GuiControl, Enable,  saveButton
		GuiControl, Disable,  combo1Text
		GuiControl,, combo1WriteButton, Yazmaya Başla
		return
	}
}

combo2WriteButton(CtrlHwnd, GuiEvent, EventInfo, ErrLevel := ""){
	pressed2 := !pressed2
	if(pressed2){ 
		UTIL_CloseEverything()
		Suspend, On
		SetCapsLockState,AlwaysOn
		GuiControl, Disable,  combo1WriteButton
		GuiControl, Enable,  combo2Text
		GuiControl, Focus, combo2Text
		GuiControl, Disable, startButton
		GuiControl, Disable, saveButton
		GuiControl,, combo2WriteButton, Yazmayı Durdur
		return
	}else{
		GuiControl, Enable,  combo1WriteButton
		Suspend, Off
		SetCapsLockState, off
		GuiControl, Enable,  startButton
		GuiControl, Enable,  saveButton
		GuiControl, Disable,  combo2Text
		GuiControl,, combo2WriteButton, Yazmaya Başla
		return
	}
}	

saveButton(CtrlHwnd, GuiEvent, EventInfo, ErrLevel := ""){
	Gui, Submit, NoHide
	
	GUI_Write()
	
	UTIL_CloseEverything()
	
	GuiControl,, startButton, Makroyu Başlat
	UTIL_Print("Kaydedildi ve Makro Durduruldu!")
	
	;Update the toggle variable to allow user to toggle everything again without pressing twice. 
	if(startStopToggle){
		startStopToggle = 0
	}else{
		startStopToggle = 1
	}
}

GuiClose(CtrlHwnd, GuiEvent, EventInfo, ErrLevel := ""){
	UTIL_CloseEverything()
	ExitApp
	Return
}

startButton(CtrlHwnd, GuiEvent, EventInfo, ErrLevel := ""){
	startStopToggle := !startStopToggle
	
	if(startStopToggle){
		Gui, Submit, NoHide
		GuiControl,, startButton, Makroyu Durdur
		UTIL_Print("Makro Başlatıldı!")
		run_path = %A_ScriptDir%\lib\controls
		
	;LightFeet
		if(LightFeetActivateChecked){
			
			Run, %run_path%\lightfeet.parallax
			
		}else if(!LightFeetActivateChecked){
			
			UTIL_CloseScript("lightfeet.parallax")
			
		}
		
	;C-Minor
		if(MinorActivateCheckedMouse){
			
			Run, %run_path%\extram.parallax
			
		}else if(!MinorActivateCheckedMouse){
			
			UTIL_CloseScript("extram.parallax")
			
		}
		
	;Cure
		if(CureActivateChecked){
			
			Run, %run_path%\cure.parallax
			
		}else if(!CureActivateChecked){
			
			UTIL_CloseScript("cure.parallax")
			
		}
		
	;Armor Cancellation
		if(ArmCancelActivateChecked){
			
			Run, %run_path%\m20.parallax
			
		}else if(!ArmCancelActivateChecked){
			
			UTIL_CloseScript("m20.parallax")
			
		}
		
	;Town
		if(TownActivateChecked){ 
			
			Run, %run_path%\town.parallax
			
		}else if(!TownActivateChecked){
			
			UTIL_CloseScript("town.parallax")
			
		}
		
	;Pk Mode
		if(UTIL_isChecked(combo1Radio)){
			
			Run  %run_path%\combo1.parallax
			
		}else if(!combo1Radio){
			
			UTIL_CloseScript("combo1.parallax")
			
		}
		
	;Vs Mode
		if(UTIL_isChecked(combo2Radio)){
			
			Run %run_path%\combo2.parallax
			
		}else if(!combo2Radio){
			
			UTIL_CloseScript("combo2.parallax")
			
		}
		
	;slide
		if(slideActivateChecked){ 
			
			Run, %run_path%\slide.parallax
			
		}else if(!slideActivateChecked){
			
			UTIL_CloseScript("slide.parallax")
			
		}
		
	;Pk conv
		if(UTIL_isChecked(PkModActivateChecked)){
			
			Run, %run_path%\pkconv.parallax
			
		}else if(!PkModActivateChecked){
			
			UTIL_CloseScript("pkconv.parallax")
			
		}
		*/
	}else{
		UTIL_CloseEverything()
		UTIL_Print("Makro Durduruldu!")
	}
	Send {w up}
}

SlideConfig(CtrlHwnd, GuiEvent, EventInfo, ErrLevel := ""){
	Loop
	{
		MouseGetPos X, Y
		ToolTip, X:%X%`,Y:%Y% Seçmek için V'ye bas.
		
		if(GetKeyState("v", "D")){
			IniWrite, %x%, %A_WorkingDir%/Lib/ParallaxSettings.ini, Coords, X
			IniWrite, %y%, %A_WorkingDir%/Lib/ParallaxSettings.ini, Coords, Y
			break
		}
		
	}
	ToolTip
}




;------------------------ H O T K E Y S ------------------------
;Toggle between combo1text and combo2text with numlock. 
~$NumLock::
Gui, Submit, NoHide
if(radioToggle == 0){
	
	UTIL_CloseEverything()
	GuiControl,,combo2Radio, 1
	radioToggle += 1
	UTIL_Print("Kombo 2'ye geçildi")
}else{
	UTIL_CloseEverything()
	GuiControl,,combo1Radio,1
	radioToggle = 0
	UTIL_Print("Kombo 1'e geçildi")
}
return
