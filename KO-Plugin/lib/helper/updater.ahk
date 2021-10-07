SWP_CheckUpdates(){
	
	if(clientVersion == githubVersion){
		return
	}else{
		FileDelete, version.txt
		FileAppend, %githubVersion%, version.txt
	}
	
	global WM_USER               := 0x00000400
	global PBM_SETMARQUEE        := WM_USER + 10
	global PBM_SETSTATE          := WM_USER + 16
	global PBS_MARQUEE           := 0x00000008
	global PBS_SMOOTH            := 0x00000001
	global PBS_VERTICAL          := 0x00000004
	global PBST_NORMAL           := 0x00000001
	global PBST_ERROR            := 0x00000002
	global PBST_PAUSE            := 0x00000003
	global STAP_ALLOW_NONCLIENT  := 0x00000001
	global STAP_ALLOW_CONTROLS   := 0x00000002
	global STAP_ALLOW_WEBCONTENT := 0x00000004
	global WM_THEMECHANGED       := 0x0000031A
	
	Gui, Margin, 5, 5
	Gui, Font, s11 Bold
	Gui, Add, Progress, w300 h20 hwndMARQ4 -%PBS_SMOOTH% +%PBS_MARQUEE%, 50
	DllCall("User32.dll\SendMessage", "Ptr", MARQ4, "Int", PBM_SETMARQUEE, "Ptr", 1, "Ptr", 50)
	Gui Add, Text, x46 y25 w250 h23 +0x200 , Güncelleniyor ve doğrulanıyor...
	Gui, Show, AutoSize
	
	url = https://github.com/omerfarukkara35/ParallaxHotkey-User/raw/main/Lib/cure.parallax
	UrlDownloadToFile, %url%, %A_WorkingDir%\Lib\cure.parallax
	
	url = https://github.com/omerfarukkara35/ParallaxHotkey-User/raw/main/Lib/extram.parallax
	UrlDownloadToFile, %url%, %A_WorkingDir%\Lib\extram.parallax
	
	url = https://github.com/omerfarukkara35/ParallaxHotkey-User/raw/main/Lib/lightfeet.parallax
	UrlDownloadToFile, %url%, %A_WorkingDir%\Lib\lightfeet.parallax
	
	url = https://github.com/omerfarukkara35/ParallaxHotkey-User/raw/main/Lib/m20.parallax
	UrlDownloadToFile, %url%, %A_WorkingDir%\Lib\m20.parallax
	
	url = https://github.com/omerfarukkara35/ParallaxHotkey-User/raw/main/Lib/minor.parallax
	UrlDownloadToFile, %url%, %A_WorkingDir%\Lib\minor.parallax
	
	url = https://github.com/omerfarukkara35/ParallaxHotkey-User/raw/main/Lib/pkmod.parallax
	UrlDownloadToFile, %url%, %A_WorkingDir%\Lib\pkmod.parallax
	
	url = https://github.com/omerfarukkara35/ParallaxHotkey-User/raw/main/Lib/town.parallax
	UrlDownloadToFile, %url%, %A_WorkingDir%\Lib\town.parallax
	
	url = https://github.com/omerfarukkara35/ParallaxHotkey-User/raw/main/Lib/vsmod.parallax
	UrlDownloadToFile, %url%, %A_WorkingDir%\Lib\vsmod.parallax
	
	url = https://github.com/omerfarukkara35/ParallaxHotkey-User/raw/main/Lib/z.parallax
	UrlDownloadToFile, %url%, %A_WorkingDir%\Lib\z.parallax
	
	url = https://github.com/omerfarukkara35/ParallaxHotkey-User/raw/main/Lib/pkconv.parallax
	UrlDownloadToFile, %url%, %A_WorkingDir%\Lib\pkconv.parallax
	
	url = https://github.com/omerfarukkara35/ParallaxHotkey-User/raw/main/Lib/slide.parallax
	UrlDownloadToFile, %url%, %A_WorkingDir%\Lib\slide.parallax
	
	Gui, Destroy
}