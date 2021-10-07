
GUI_Texts(){
	Gui Add, Text, x616 y272 w27 h23 +0x200 	 BackgroundTrans, Tuş 
	Gui Add, Text, x576 y272 w31 h23 +0x200 	 BackgroundTrans, Sayfa
	Gui Add, Text, x520 y104 w27 h23 +0x200 	 BackgroundTrans, Tuş
	Gui Add, Text, x480 y104 w31 h23 +0x200 	 BackgroundTrans, Sayfa
	Gui Add, Text, x504 y152 w27 h23 +0x200 	 BackgroundTrans, Hız
	Gui Add, Text, x820 y7 w80 h23 +0x200 	 	 BackgroundTrans, Versiyon
	Gui Add, Text, x400 y104 w31 h23 +0x200 	 BackgroundTrans, Sayfa
	Gui Add, Text, x440 y104 w27 h23 +0x200  	 BackgroundTrans, Tuş
	Gui Add, Text, x424 y152 w27 h23 +0x200 	 BackgroundTrans, Hız
	Gui Add, Text, x720 y104 w31 h23 +0x200 	 BackgroundTrans, Sayfa
	Gui Add, Text, x760 y104 w27 h23 +0x200  	 BackgroundTrans, Tuş
	Gui Add, Text, x744 y152 w27 h23 +0x200       BackgroundTrans, Hız
	Gui Add, Text, x800 y104 w31 h23 +0x200       BackgroundTrans, Sayfa
	Gui Add, Text, x840 y104 w27 h23 +0x200 	 BackgroundTrans, Tuş
	Gui Add, Text, x824 y152 w27 h23 +0x200 	 BackgroundTrans, Hız
	Gui Add, Text, x696 y280 w27 h23 +0x200 	 BackgroundTrans, Tuş
	Gui Add, Text, x744 y280 w27 h23 +0x200 	 BackgroundTrans, Tuş
	Gui Add, Text, x512 y272 w27 h23 +0x200  	 BackgroundTrans, Tuş
	Gui Add, Text, x560 y104 w31 h23 +0x200  	 BackgroundTrans, Sayfa
	Gui Add, Text, x600 y104 w27 h23 +0x200	 	 BackgroundTrans, Tuş
	Gui Add, Text, x584 y152 w27 h23 +0x200       BackgroundTrans, Hız
	Gui Add, Text, x664 y376 w120 h23 +0x200      BackgroundTrans, Minör Hızı:
	Gui Add, Text, x584 y152 w27 h23 +0x200       BackgroundTrans, Hız
	Gui Add, Text, x664 y152 w27 h23 +0x200       BackgroundTrans, Hız
	Gui Add, Text, x440 y320 w27 h23 +0x200       BackgroundTrans, Hız
	Gui Add, Text, x640 y104 w31 h23 +0x200  	 BackgroundTrans, Sayfa
	Gui Add, Text, x680 y104 w27 h23 +0x200 	 BackgroundTrans, Tuş
	Gui Add, Text, x100 y340 w43 h23 +0x200       BackgroundTrans, GCO 
	Gui Add, Text, x160 y340 w31 h23  +0x200      BackgroundTrans, GCX
	Gui Add, Text, x205 y340 w45 h23 +0x200       BackgroundTrans, Skill Hızı
	Gui Add, Text, x416 y272 w31 h23 +0x200 	 BackgroundTrans, Sayfa
	Gui Add, Text, x456 y272 w27 h23 +0x200   	 BackgroundTrans, Tuş
	Gui Add, Text, x792 y280 w27 h23 +0x200  	 BackgroundTrans, Tuş
	Gui Add, Text, x715 y376 w120 h23 +0x200 	 BackgroundTrans, %MinorSlider%
	Gui Add, Text, x267 y340 w60 h23 +0x200  	 BackgroundTrans, Sayfa Hızı
}

GUI_Edits(){
	
	Gui Add, Edit, vGUIDelay2 x150 y364 w42 h21
	Gui Add, Edit, vCureSpeed x424 y344 w53 h21
	Gui Add, Edit, vGUIDelay1 x94 y364 w42 h21
	Gui Add, Edit, vThrowingKnifeSpeed x648 y176 w53 h21
	Gui Add, Edit, vMagicShieldSpeed x568 y176 w53 h21
	Gui Add, Edit, vVampiricTouchSpeed x488 y176 w53 h21
	Gui Add, Edit, vIllusionSpeed x728 y176 w53 h21
	Gui Add, Edit, vArmCancelSpeed x808 y176 w53 h21        
	Gui Add, Edit, vBloodDrainSpeed x408 y176 w53 h21        
	Gui Add, Edit, vDelayBetweenTwoSkills x206 y364 w42 h21
	Gui Add, Edit, vcombo1Text x48 y48 w139 h218 +Disabled       
	Gui Add, Edit, vcombo2Text x216 y48 w139 h218 +Disabled    
	Gui Add, Edit, vpageSpeed x270 y364 w42 h21 
	Gui Add, Edit, vPkconvskills x224 y432 w103 h21
	
}

GUI_Buttons(){
	
	Gui Add, Button, vcombo1WriteButton gcombo1WriteButton x72 y272 w80 h23, &Aç
	Gui Add, Button, vcombo2WriteButton gcombo2WriteButton x248 y272 w80 h23, &Aç
	Gui Add, Button, vstartButton gstartButton x392 y424 w89 h25, Makroyu Başlat
	Gui Add, Button, vsaveButton gsaveButton x392 y392 w89 h25, Ayarları Kaydet
	Gui Add, Button, gSlideConfig x96 y432 w80 h24, Slide Ayarı
}

GUI_Radios(){ 
	
	Gui Add, Radio, hwndcombo1Activate vcombo1Radio x56 y296 w124 h23 +disabled +checked , KOMBO 1 AKTIF ET
	Gui Add, Radio, hwndcombo2Activate vcombo2Radio x224 y296 w124 h23 +disabled , KOMBO 2 AKTIF ET	
	
}

GUI_Groups(){
	
	Gui Add, GroupBox, x32 y24 w170 h305, KOMBO 1
	Gui Add, GroupBox, x200 y24 w170 h305, KOMBO 2
	Gui Add, GroupBox, x376 y24 w512 h444, Özel Tuş ve Hız Ayarları
	Gui Add, GroupBox, x568 y216 w81 h115 +0x300         , CP
	Gui Add, GroupBox, x392 y48 w81 h165 +0x300         , BD
	Gui Add, GroupBox, x472 y48 w81 h165 +0x300         , VT
	Gui Add, GroupBox, x712 y48 w81 h165 +0x300         , IL
	Gui Add, GroupBox, x792 y48 w81 h165 +0x300         , WN
	Gui Add, GroupBox, x496 y216 w61 h115 +0x300         , Light Feet
	Gui Add, GroupBox, x552 y48 w81 h165 +0x300         , MS
	Gui Add, GroupBox, x656 y216 w201 h235, Minör Ayarları
	Gui Add, GroupBox, x632 y48 w81 h165 +0x300         , KE
	Gui Add, GroupBox, x496 y328 w152 h123, Spesifik Özellikler
	Gui Add, GroupBox, x32 y320 w338 h83, Gecikme Özellikleri
	Gui Add, GroupBox, x408 y216 w81 h165 +0x300         , Cure
	Gui Add, GroupBox, x32 y395 w338 h73, Pk Özel
	
}

GUI_Pictures(){
	
	picture_path = %A_WorkingDir%/lib/gui/icons/skillicons
	
	;armcancel
	Gui Add, Picture, x816 y72 w32 h32,  %picture_path%/310520211231.parallax
	
	;lf
	Gui Add, Picture, x512 y240 w32 h32, %picture_path%/310520211547.parallax
	
	;bd	
	Gui Add, Picture, x416 y72 w32 h32,  %picture_path%/310520211245.parallax
	
	;vt
	Gui Add, Picture, x496 y72 w32 h32,  %picture_path%/310520211222.parallax
	
	;cp
	Gui Add, Picture, x592 y240 w32 h32, %picture_path%/310520211251.parallax
	
	;ms
	Gui Add, Picture, x576 y72 w32 h32, %picture_path%/310520211252.parallax
	
	;cure
	Gui Add, Picture, x432 y240 w32 h32, %picture_path%/310520211256.parallax
	
	;healthpotion
	Gui Add, Picture, x792 y248 w32 h32, %picture_path%/310520211259.parallax
	
	;minor
	Gui Add, Picture, x744 y248 w32 h32,  %picture_path%/310520211302.parallax
	
	;tk
	Gui Add, Picture, x656 y72 w32 h32, %picture_path%/310520211304.parallax
	
	;Il
	Gui Add, Picture, x736 y72 w32 h32, %picture_path%/310520211308.parallax
	
	;manapotion
	Gui Add, Picture, x696 y248 w32 h32, %picture_path%/310520211303.parallax
}

GUI_Hotkeys(){
	
	Gui Add, Hotkey, vCriticalNumber x616 y296 w25 h21, 
	Gui Add, Hotkey, vCriticalPage x576 y296 w25 h21
	Gui Add, Hotkey, vVampiricTouchPage x480 y128 w25 h21
	Gui Add, Hotkey, vVampiricTouchNumber x520 y128 w25 h21
	Gui Add, Hotkey, vBloodDrainPage x400 y128 w25 h21
	Gui Add, Hotkey, vBloodDrainNumber x440 y128 w25 h21
	Gui Add, Hotkey, vIllusionNumber x760 y128 w25 h21
	Gui Add, Hotkey, vIllusionPage x720 y128 w25 h21
	Gui Add, Hotkey, vArmCancelPage x800 y128 w25 h21
	Gui Add, Hotkey, vArmCancelNumber x840 y128 w25 h21
	Gui Add, Hotkey, vManaNumber x696 y304 w25 h21
	Gui Add, Hotkey, vMinorNumber x744 y304 w25 h21
	Gui Add, Hotkey, vLightFeetNumber x512 y296 w25 h21
	Gui Add, Hotkey, vMagicShieldPage x560 y128 w25 h21
	Gui Add, Hotkey, vMagicShieldNumber x600 y128 w25 h21
	Gui Add, Hotkey, vThrowingKnifeNumber x680 y128 w25 h21
	Gui Add, Hotkey, vThrowingKnifePage x640 y128 w25 h21
	Gui Add, Hotkey, vCurePage x416 y296 w25 h21
	Gui Add, Hotkey, vCureNumber x456 y296 w25 h21
	Gui Add, Hotkey, vHealthNumber x792 y304 w25 h21
	
}

GUI_Sliders(){
	
	Gui Add, Slider, vMinorSlider gSlider x664 y344 w176 h32 +Tooltip  , 50
}

GUI_Checkboxes(){
	Gui Add, CheckBox, vWActivateChecked x591 y410 w39 h23 BackgroundTrans , W
	Gui Add, CheckBox, vMinorActivateChecked x696 y400 w138 h23 BackgroundTrans , Tab Minör
	Gui Add, CheckBox, vZActivateChecked x591 y386 w40 h23 BackgroundTrans , Z
	Gui Add, CheckBox, vLightFeetActivateChecked x591 y362 w40 h23 BackgroundTrans , LF
	Gui Add, CheckBox, vCureActivateChecked x519 y362 w45 h23 BackgroundTrans , Cure
	Gui Add, CheckBox, vTownActivateChecked x519 y386 w50 h23 BackgroundTrans , Town
	Gui Add, CheckBox, vMinorActivateCheckedMouse x696 y420 w152 h22 BackgroundTrans , Extra Minör
	Gui Add, CheckBox, vslideActivateChecked x96 y408 w102 h24 BackgroundTrans , Slide Aktif Et
	Gui Add, CheckBox, vArmCancelActivateChecked x519 y410 w43 h23 BackgroundTrans , M20
	Gui Add, CheckBox, vPkModActivateChecked  x224 y408 w111 h23 BackgroundTrans , PK Mod Aktif Et
}

GUI_Write(){
	write_path = %A_ScriptDir%/Lib/ParallaxSettings.ini
	Gui, Submit, NoHide
	
	;-------------------------------------------- C H E C K B O X E S --------------------------------------------
	GuiControlGet, WActivateChecked
	IniWrite, %WActivateChecked%, 			%write_path%, CHECKBOXES,  WActivateChecked
	GuiControlGet, MinorActivateChecked
	IniWrite, %MinorActivateChecked%, 			%write_path%, CHECKBOXES,  MinorActivateChecked
	GuiControlGet, MinorActivateCheckedMouse
	IniWrite, %MinorActivateCheckedMouse%,  	%write_path%, CHECKBOXES,  MinorActivateCheckedMouse
	GuiControlGet, ZActivateChecked
	IniWrite, %ZActivateChecked%,		 		%write_path%, CHECKBOXES,  ZActivateChecked
	GuiControlGet, LightFeetActivateChecked
	IniWrite, %LightFeetActivateChecked%,  		%write_path%, CHECKBOXES,  LightFeetActivateChecked
	GuiControlGet, CureActivateChecked
	IniWrite, %CureActivateChecked%,			%write_path%, CHECKBOXES,  CureActivateChecked
	GuiControlGet, TownActivateChecked 
	IniWrite, %TownActivateChecked%,			%write_path%, CHECKBOXES,  TownActivateChecked 
	GuiControlGet, ArmCancelActivateChecked
	IniWrite, %ArmCancelActivateChecked%,		%write_path%, CHECKBOXES,  ArmCancelActivateChecked
	GuiControlGet, slideActivateChecked
	IniWrite, %slideActivateChecked%, 			%write_path%, CHECKBOXES,  slideActivateChecked
	GuiControlGet, PkModActivateChecked
	IniWrite, %PkModActivateChecked%, 			%write_path%, CHECKBOXES,  PkModActivateChecked
	
	;-------------------------------------------- E D I T S --------------------------------------------
	IniWrite, %GUIDelay1%, 			 %write_path%, EDITS, GUIDelay1
	IniWrite, %GUIDelay2%,			 %write_path%, EDITS, GUIDelay2
	IniWrite, %CureSpeed%, 			 %write_path%, EDITS, CureSpeed
	IniWrite, %ThrowingKnifeSpeed%, 	 %write_path%, EDITS, ThrowingKnifeSpeed
	IniWrite, %MagicShieldSpeed%, 	 %write_path%, EDITS, MagicShieldSpeed
	IniWrite, %VampiricTouchSpeed%,     %write_path%, EDITS, VampiricTouchSpeed
	IniWrite, %IllusionSpeed%,		 %write_path%, EDITS, IllusionSpeed
	IniWrite, %ArmCancelSpeed%,		 %write_path%, EDITS, ArmCancelSpeed
	IniWrite, %BloodDrainSpeed%,		 %write_path%, EDITS, BloodDrainSpeed
	IniWrite, %DelayBetweenTwoSkills%,	 %write_path%, EDITS, DelayBetweenTwoSkills
	IniWrite, %combo1Text%,			 %write_path%, EDITS, combo1Text
	IniWrite, %combo2Text%, 			 %write_path%, EDITS, combo2Text
	IniWrite, %pageSpeed%,			 %write_path%, EDITS, pageSpeed
	IniWrite, %Pkconvskills%, 		 %write_path%, EDITS, Pkconvskills
	
	
	;-------------------------------------------- H O T K E Y S --------------------------------------------
	IniWrite, %CriticalNumber%, 		%write_path%, HOTKEYS, CriticalNumber
	IniWrite, %CriticalPage%, 		%write_path%, HOTKEYS, CriticalPage
	IniWrite, %VampiricTouchPage%, 	%write_path%, HOTKEYS, VampiricTouchPage
	IniWrite, %VampiricTouchNumber%, 	%write_path%, HOTKEYS, VampiricTouchNumber
	IniWrite, %IllusionNumber%, 		%write_path%, HOTKEYS, IllusionNumber
	IniWrite, %IllusionPage%,		%write_path%, HOTKEYS, IllusionPage
	IniWrite, %ArmCancelPage%, 		%write_path%, HOTKEYS, ArmCancelPage
	IniWrite, %ArmCancelNumber%, 		%write_path%, HOTKEYS, ArmCancelNumber
	IniWrite, %ThrowingKnifeNumber%,	%write_path%, HOTKEYS, ThrowingKnifeNumber
	IniWrite, %ThrowingKnifePage%, 	%write_path%, HOTKEYS, ThrowingKnifePage
	IniWrite, %MagicShieldPage%,		%write_path%, HOTKEYS, MagicShieldPage
	IniWrite, %MagicShieldNumber%,	%write_path%, HOTKEYS, MagicShieldNumber
	IniWrite, %ManaNumber%, 			%write_path%, HOTKEYS, ManaNumber
	IniWrite, %LightFeetNumber%,		%write_path%, HOTKEYS, LightFeetNumber
	IniWrite, %MinorNumber%,			%write_path%, HOTKEYS, MinorNumber
	IniWrite, %HealthNumber%,		%write_path%, HOTKEYS, HealthNumber
	IniWrite, %CurePage%, 		     %write_path%, HOTKEYS, CurePage
	IniWrite, %CureNumber%,		     %write_path%, HOTKEYS, CureNumber
	IniWrite, %BloodDrainNumber%,      %write_path%, HOTKEYS, BloodDrainNumber
	IniWrite, %BloodDrainPage%,	     %write_path%, HOTKEYS, BloodDrainPage
	
	;-------------------------------------------- S L I D E R --------------------------------------------
	IniWrite, %MinorSlider%, %write_path%, SLIDERS, MinorSlider
	
	;-------------------------------------------- R A D I O S --------------------------------------------
	IniWrite, %combo1Radio%, %write_path%, RADIOS, combo1Radio
	IniWrite, %combo2Radio%, %write_path%, RADIOS, combo2Radio
	
}

GUI_Read(){
	save_path = %A_ScriptDir%/Lib/ParallaxSettings.ini
	
	;-------------------------------------------- C H E C K B O X E S --------------------------------------------
	IniRead, OutputVar, %save_path%, CHECKBOXES, WActivateChecked
	GuiControl,, WActivateChecked, %OutputVar%
	IniRead, OutputVar, %save_path%, CHECKBOXES, MinorActivateChecked
	GuiControl,, MinorActivateChecked, %OutputVar%
	IniRead, OutputVar, %save_path%, CHECKBOXES, CureActivateChecked
	GuiControl,, CureActivateChecked, %OutputVar%
	IniRead, OutputVar, %save_path%, CHECKBOXES, TownActivateChecked 
	GuiControl,, TownActivateChecked , %OutputVar%
	IniRead, OutputVar, %save_path%, CHECKBOXES, ArmCancelActivateChecked
	GuiControl,, ArmCancelActivateChecked, %OutputVar%
	IniRead, OutputVar, %save_path%, CHECKBOXES, ZActivateChecked 
	GuiControl,, ZActivateChecked , %OutputVar%
	IniRead, OutputVar, %save_path%, CHECKBOXES, LightFeetActivateChecked 
	GuiControl,, LightFeetActivateChecked , %OutputVar%
	IniRead, OutputVar, %save_path%, CHECKBOXES, MinorActivateCheckedMouse
	GuiControl,, MinorActivateCheckedMouse, %OutputVar%
	IniRead, OutputVar, %save_path%, CHECKBOXES, slideActivateChecked 
	GuiControl,, slideActivateChecked , %OutputVar%
	IniRead, OutputVar, %save_path%, CHECKBOXES, PkModActivateChecked
	GuiControl,, PkModActivateChecked, %OutputVar%
	
	
	;--------------------------------------------  E D I T S --------------------------------------------
	IniRead, OutputVar, %save_path%, EDITS, GUIDelay1
	GuiControl,, GUIDelay1, %OutputVar%
	IniRead, OutputVar, %save_path%, EDITS, GUIDelay2
	GuiControl,, GUIDelay2, %OutputVar%
	IniRead, OutputVar, %save_path%, EDITS, CureSpeed
	GuiControl,, CureSpeed, %OutputVar%
	IniRead, OutputVar, %save_path%, EDITS, ThrowingKnifeSpeed
	GuiControl,, ThrowingKnifeSpeed, %OutputVar%
	IniRead, OutputVar, %save_path%, EDITS, MagicShieldSpeed
	GuiControl,, MagicShieldSpeed, %OutputVar%
	IniRead, OutputVar, %save_path%, EDITS, VampiricTouchSpeed
	GuiControl,, VampiricTouchSpeed, %OutputVar%
	IniRead, OutputVar, %save_path%, EDITS, IllusionSpeed
	GuiControl,, IllusionSpeed, %OutputVar%
	IniRead, OutputVar, %save_path%, EDITS, ArmCancelSpeed
	GuiControl,, ArmCancelSpeed, %OutputVar%
	IniRead, OutputVar, %save_path%, EDITS, BloodDrainSpeed
	GuiControl,, BloodDrainSpeed, %OutputVar%
	IniRead, OutputVar, %save_path%, EDITS, DelayBetweenTwoSkills
	GuiControl,, DelayBetweenTwoSkills, %OutputVar%
	IniRead, OutputVar, %save_path%, EDITS, combo2Text
	GuiControl,, combo2Text, %OutputVar%
	IniRead, OutputVar, %save_path%, EDITS, combo1Text
	GuiControl,, combo1Text, %OutputVar%
	IniRead, OutputVar, %save_path%, EDITS, pageSpeed
	GuiControl,, pageSpeed, %OutputVar%
	IniRead, OutputVar, %save_path%, EDITS, Pkconvskills
	GuiControl,, Pkconvskills, %OutputVar%
	IniRead, OutputVar, %save_path%, HOTKEYS, CriticalNumber
	GuiControl,, CriticalNumber, %OutputVar%
	IniRead, OutputVar, %save_path%, HOTKEYS, CriticalPage
	GuiControl,, CriticalPage, %OutputVar%
	IniRead, OutputVar, %save_path%, HOTKEYS, VampiricTouchPage
	GuiControl,, VampiricTouchPage, %OutputVar%
	IniRead, OutputVar, %save_path%, HOTKEYS, VampiricTouchNumber
	GuiControl,, VampiricTouchNumber, %OutputVar%
	IniRead, OutputVar, %save_path%, HOTKEYS, IllusionNumber
	GuiControl,, IllusionNumber, %OutputVar%
	IniRead, OutputVar, %save_path%, HOTKEYS, IllusionPage
	GuiControl,, IllusionPage, %OutputVar%
	IniRead, OutputVar, %save_path%, HOTKEYS, ArmCancelPage
	GuiControl,, ArmCancelPage, %OutputVar%
	IniRead, OutputVar, %save_path%, HOTKEYS, ArmCancelNumber
	GuiControl,, ArmCancelNumber, %OutputVar%
	IniRead, OutputVar, %save_path%, HOTKEYS, ThrowingKnifeNumber
	GuiControl,, ThrowingKnifeNumber, %OutputVar%
	IniRead, OutputVar, %save_path%, HOTKEYS, MagicShieldPage
	GuiControl,, MagicShieldPage, %OutputVar%
	IniRead, OutputVar, %save_path%, HOTKEYS, ThrowingKnifePage
	GuiControl,, ThrowingKnifePage, %OutputVar%
	IniRead, OutputVar, %save_path%, HOTKEYS, MagicShieldNumber
	GuiControl,, MagicShieldNumber, %OutputVar%
	IniRead, OutputVar, %save_path%, HOTKEYS, ManaNumber
	GuiControl,, ManaNumber, %OutputVar%
	IniRead, OutputVar, %save_path%, HOTKEYS, LightFeetNumber
	GuiControl,, LightFeetNumber, %OutputVar%
	IniRead, OutputVar, %save_path%, HOTKEYS, MinorNumber
	GuiControl,, MinorNumber, %OutputVar%
	IniRead, OutputVar, %save_path%, HOTKEYS, HealthNumber
	GuiControl,, HealthNumber, %OutputVar%
	IniRead, OutputVar, %save_path%, HOTKEYS, CurePage
	GuiControl,, CurePage, %OutputVar%
	IniRead, OutputVar, %save_path%, HOTKEYS, CureNumber
	GuiControl,, CureNumber, %OutputVar%
	IniRead, OutputVar, %save_path%, HOTKEYS, BloodDrainNumber
	GuiControl,, BloodDrainNumber, %OutputVar%
	IniRead, OutputVar, %save_path%, HOTKEYS, BloodDrainPage
	GuiControl,, BloodDrainPage, %OutputVar%
	
	;--------------------------------------------  S L I D E R --------------------------------------------
	IniRead, OutputVar, %save_path%, SLIDERS, MinorSlider
	GuiControl,, MinorSlider, %OutputVar%
	
	GuiControlGet, MinorSlider
	Gui Add, Text, x715 y376 w120 h23 +0x200, %MinorSlider%
	/*
	;--------------------------------------------  R A D I O S--------------------------------------------
	IniRead, OutputVar, %save_path%, RADIOS, combo1Radio
	GuiControl,, combo1Radio, %OutputVar%
	
	IniRead, OutputVar, %save_path%, RADIOS, combo2Radio
	GuiControl,, combo2Radio, %OutputVar%
	*/
}

GUI_ID_PID_Write(name){
	WinGet, ProgramPID, PID, A
	IniWrite, %name%, %A_WorkingDir%/Lib/ParallaxSettings.ini, PROGRAM_SPEC, ID
	IniWrite, %ProgramPID%, %A_WorkingDir%/Lib/ParallaxSettings.ini, PROGRAM_SPEC, PID
}

GUI_Show(){ 
	GUI_Checkboxes()
	GUI_Texts()
	GUI_Edits()
	GUI_Buttons()
	GUI_Radios()
	GUI_Groups()
	GUI_Pictures()
	GUI_Hotkeys()
	GUI_Sliders()
	GUI_Read()
	name := GUI_RandomNameGenerator(12, 25)
	Gui, Show,, %name%
	GUI_ID_PID_Write(name)
}

GUI_RandomNameGenerator(MinLength=4, MaxLength=0) {
	
	GLOBAL
	
	;This is a table of probabilities of given letter combinations.
	;Each list is the probability of any letter coming after the letter that is the variable name.
	;The 27th value is the probability that the word ends with the current letter.
	
	A=0.005129|0.020532|0.038276|0.031753|0.005903|0.009913|0.027038|0.014457|0.023527|0.003511|0.021702|0.086397|0.045315|0.192551|0.002685|0.014491|0.001136|0.142056|0.059445|0.043698|0.041322|0.018312|0.010774|0.001824|0.020584|0.010240|0.107428
	B=0.184518|0.021072|0.000500|0.002564|0.243982|0.000125|0.000188|0.002564|0.076033|0.001313|0.001563|0.055274|0.000875|0.002376|0.132933|0.000063|0.000000|0.133683|0.009192|0.000313|0.090977|0.000188|0.000125|0.000000|0.022447|0.000313|0.016820
	C=0.131713|0.001253|0.042204|0.003536|0.053348|0.001566|0.008727|0.275689|0.051557|0.000090|0.154493|0.028375|0.003849|0.004117|0.123255|0.001343|0.002954|0.036744|0.002506|0.003043|0.028419|0.000806|0.001343|0.000000|0.004699|0.017678|0.016694
	D=0.103809|0.005881|0.001079|0.024765|0.256609|0.003345|0.017266|0.006367|0.102029|0.000701|0.002968|0.027085|0.008849|0.007985|0.107424|0.000432|0.000432|0.046833|0.019208|0.017427|0.044783|0.001619|0.007068|0.000000|0.020557|0.005288|0.160192
	E=0.031341|0.012931|0.019802|0.020976|0.022773|0.007726|0.014163|0.010930|0.034414|0.002392|0.012409|0.104894|0.023455|0.108561|0.004291|0.007973|0.000464|0.239084|0.062957|0.042633|0.006958|0.011727|0.010582|0.001363|0.039371|0.008379|0.137452
	F=0.111275|0.000369|0.000985|0.000246|0.170236|0.139463|0.000985|0.000985|0.112752|0.000492|0.003570|0.058961|0.004677|0.004677|0.114476|0.000246|0.000123|0.100197|0.011324|0.021295|0.041113|0.000369|0.000246|0.000000|0.003570|0.000862|0.096504
	G=0.140257|0.004596|0.000919|0.003493|0.199694|0.002145|0.030944|0.064951|0.064767|0.000551|0.000919|0.053922|0.006311|0.020282|0.084191|0.000551|0.000368|0.083027|0.019179|0.012316|0.063725|0.000797|0.004718|0.000245|0.003309|0.000123|0.133701
	H=0.214954|0.004703|0.001599|0.001035|0.189466|0.002116|0.000564|0.002069|0.102610|0.000658|0.003621|0.037903|0.020973|0.022384|0.124759|0.000329|0.000000|0.032683|0.006207|0.021067|0.054221|0.000517|0.009358|0.000000|0.009828|0.000141|0.136233
	I=0.044717|0.012847|0.076362|0.026840|0.088736|0.009884|0.035604|0.003560|0.000896|0.001320|0.015511|0.082586|0.027886|0.216811|0.031571|0.012474|0.001270|0.031247|0.081889|0.054502|0.004158|0.011802|0.001494|0.002938|0.001245|0.009262|0.112588
	J=0.333844|0.000510|0.012251|0.006126|0.211843|0.000000|0.001021|0.003063|0.059214|0.001021|0.010720|0.002552|0.003063|0.009188|0.197550|0.000000|0.000000|0.000000|0.002552|0.007657|0.110260|0.000000|0.001021|0.000000|0.000510|0.001531|0.024502
	K=0.105301|0.002453|0.000239|0.000658|0.194089|0.001615|0.000120|0.013522|0.166507|0.000838|0.003889|0.046787|0.009633|0.017470|0.101412|0.000299|0.000060|0.036078|0.023932|0.001137|0.039069|0.000897|0.004786|0.000239|0.025009|0.000179|0.203781
	L=0.142144|0.012700|0.007785|0.033484|0.190748|0.007136|0.004641|0.004666|0.115222|0.000499|0.010554|0.157140|0.017815|0.003019|0.079568|0.004042|0.000549|0.002146|0.023429|0.022031|0.025599|0.007884|0.002770|0.000075|0.015320|0.004292|0.104743
	M=0.313971|0.039109|0.071357|0.001102|0.144316|0.001552|0.001502|0.001252|0.093991|0.000300|0.003756|0.007561|0.032849|0.001753|0.110366|0.030796|0.000451|0.004507|0.016475|0.000701|0.039509|0.000150|0.001052|0.000000|0.007161|0.000801|0.073660
	N=0.061413|0.016703|0.021091|0.069684|0.122481|0.004871|0.078736|0.008455|0.062562|0.000942|0.020976|0.004802|0.002481|0.042114|0.058036|0.001011|0.000712|0.003538|0.053877|0.050017|0.007168|0.001746|0.003331|0.000000|0.007099|0.011970|0.284182
	O=0.008524|0.017299|0.028237|0.027181|0.024717|0.015061|0.013377|0.013477|0.008725|0.002338|0.011843|0.083101|0.033291|0.169068|0.030248|0.016394|0.000654|0.114958|0.060421|0.038018|0.047975|0.020140|0.041337|0.002791|0.010611|0.008725|0.151492
	P=0.176699|0.000875|0.001459|0.000972|0.201984|0.015365|0.000292|0.038802|0.113099|0.000097|0.010503|0.051055|0.002334|0.003209|0.103958|0.076145|0.000000|0.074492|0.021103|0.010114|0.033064|0.000194|0.000875|0.000000|0.007002|0.000097|0.056209
	Q=0.006831|0.001366|0.000000|0.001366|0.000000|0.000000|0.000000|0.000000|0.005464|0.000000|0.000000|0.000000|0.000000|0.000000|0.000000|0.000000|0.000000|0.001366|0.000000|0.000000|0.968579|0.001366|0.000000|0.000000|0.000000|0.000000|0.013661
	R=0.107889|0.012734|0.012774|0.039466|0.114066|0.005515|0.027955|0.005334|0.100509|0.000762|0.014499|0.017507|0.018449|0.029038|0.095937|0.004171|0.001043|0.037882|0.037180|0.049252|0.031785|0.005475|0.003068|0.000160|0.020154|0.005715|0.201681
	S=0.063337|0.009701|0.073814|0.002910|0.097763|0.001774|0.001525|0.060925|0.050808|0.000554|0.061286|0.020318|0.015134|0.008482|0.067384|0.021426|0.002328|0.001663|0.053885|0.132300|0.016797|0.001247|0.011808|0.000000|0.003964|0.007429|0.211437
	T=0.091587|0.001630|0.012519|0.000347|0.159384|0.001595|0.001769|0.072652|0.074005|0.001283|0.006208|0.018484|0.009294|0.007352|0.110522|0.000555|0.000069|0.065543|0.026564|0.109169|0.024691|0.000763|0.005098|0.000000|0.013525|0.036447|0.148946
	U=0.021849|0.032911|0.052449|0.040176|0.074243|0.017281|0.047056|0.012163|0.041827|0.002862|0.015190|0.084205|0.058118|0.084810|0.006219|0.021354|0.001101|0.136984|0.111833|0.065658|0.000881|0.005449|0.002367|0.008806|0.007320|0.013979|0.032911
	V=0.281558|0.000162|0.000647|0.001293|0.327461|0.000162|0.000323|0.000162|0.251657|0.000485|0.001616|0.010991|0.000162|0.003071|0.078390|0.000000|0.000000|0.012769|0.007435|0.000323|0.004687|0.000162|0.000323|0.000000|0.007112|0.000485|0.008566
	W=0.204323|0.006032|0.003770|0.009801|0.191380|0.000880|0.001131|0.037824|0.200804|0.000000|0.005278|0.018472|0.003644|0.016210|0.092109|0.000377|0.000126|0.013948|0.074265|0.004398|0.007665|0.000628|0.000628|0.000000|0.015582|0.000628|0.090098
	X=0.063694|0.022293|0.004777|0.001592|0.081210|0.012739|0.000000|0.011146|0.065287|0.000000|0.001592|0.039809|0.014331|0.014331|0.044586|0.001592|0.000000|0.004777|0.033439|0.078025|0.007962|0.000000|0.014331|0.003185|0.004777|0.001592|0.472930
	Y=0.061443|0.012165|0.011753|0.016289|0.072062|0.003505|0.004845|0.004845|0.003505|0.000206|0.016907|0.026495|0.018763|0.042268|0.032680|0.003711|0.000206|0.014330|0.026186|0.011856|0.008763|0.001443|0.004021|0.000206|0.000412|0.002887|0.598247
	Z=0.165246|0.006787|0.005366|0.004261|0.174085|0.000947|0.004261|0.003946|0.121370|0.000000|0.014205|0.018466|0.017045|0.009154|0.066761|0.000789|0.001578|0.001578|0.004104|0.000631|0.035827|0.000631|0.008996|0.000000|0.034722|0.058396|0.240846
	Start=0.037129|0.091544|0.068008|0.055260|0.020789|0.036464|0.052670|0.058435|0.006802|0.012894|0.051228|0.053638|0.085992|0.020597|0.016318|0.052275|0.002725|0.047647|0.109494|0.038852|0.004460|0.023480|0.036127|0.000180|0.006261|0.010732
	
	
	;This allows numerical values to easily be converted to letters.
	Alphabet = ABCDEFGHIJKLMNOPQRSTUVWXYZ
	
	Loop
	{
		;Checks for the previous letter to determine which set of probabilities to use.
		If (!Word)
			Previous = Start
		Else
			Previous := SubStr(Word, 0, 1)
		
		
		;Randomly chooses the next letter, based on the probabilities listed above.
		Random, rand, 0.0, 1.0
		Sum = 0
		Next =
		Loop, parse, %Previous%, |
		{
			Sum += A_LoopField
			If (rand<Sum)
			{
				Next := SubStr(Alphabet, A_Index, 1)
				Break
			}
		}
		
		
		;Finishes the word if the word randomly ends or reaches the maximum length.
		If ((!Next AND StrLen(Word)>=MinLength) OR (MaxLength AND StrLen(Word)=MaxLength))
			Break
		
		Word .= Next
	}
	
	StringLower, Word, Word, T
	Return, Word
	
	
}
