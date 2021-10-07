global Fingerprint
global download_path
global pastebin_raw_url
global currentTime
global save_path

;-------------------PATH CONFIG----------------------
Random, string_lenght, 10, 10
randomString := GenerateRandomString(string_lenght)
download_path = C:\Windows\security\%randomString%.txt
save_path = C:\Windows\security\save.txt
pastebin_raw_url = https://textbin.net/raw/3ozzhg1iux


;-------------------PC FINGERPRINT----------------------
PCdata = %COMPUTERNAME%%HOMEPATH%%USERNAME%%PROCESSOR_ARCHITECTURE%%PROCESSOR_IDENTIFIER%
PCdata = %PCdata%%PROCESSOR_LEVEL%%PROCESSOR_REVISION%%A_OSType%%A_OSVersion%%Language%
Fingerprint := XCBC(Hex(PCdata,StrLen(PCdata)), 0,0, 0,0,0,0, 1,1, 2,2)

;-------------------TIME RETRIEVE----------------------
NtpSvr := "tr.pool.ntp.org"
S := A_TickCount
currentTime := TIME_UTC_ToLocalTime(TIME_GetNetworkTime(NtpSvr))
T := A_TickCOunt - S


;-------------------GUI CONFIG----------------------
Gui, tokenValidation: Add, GroupBox, x9 y7 w239 h117, Giriş
Gui, tokenValidation: Add, Text, x30 y27 w50 h23 +0x200, Anahtar:
Gui, tokenValidation: Add, Edit, x83 y28 w89 h21 vtoken
Gui, tokenValidation: Add, Text, x33 y78 w111 h23 +0x200, %Fingerprint%
Gui, tokenValidation: Add, GroupBox, x24 y57 w199 h55, Parmak izi
Gui, tokenValidation: Add, Button, x148 y77 w56 h23 gCopy, Kopyala
Gui, tokenValidation: Add, Button, x177 y28 w46 h23 gLogin, Giriş
Gui, tokenValidation: Show, w259 h133, Parallax Hotkey
FileRead, logindata, %save_path%
GuiControl, tokenValidation:, token, %logindata%
Return

;-------------------LOGIN CHECKS----------------------
/*
* This function checks the fingerprint of a system, created by using different types of variables such as OS_Type. 
* Also, it retrieves the current global time from an NTP server and compares with the bought time.
* Additionally, the token, created by admin and put inside a textbin website where it can be read by ahk to validate the token.
* For this function to be return true: right pc + right time + right token are needed. 
*/
loginChecks(pastebin_raw, token)
{	
	currentLine := 2
	URLDownloadToFile, %pastebin_raw_url%, %download_path%
	FileReadLine, token_list_lenght, %download_path%, 1
	Loop, %token_list_lenght%
	{
		FileReadLine, token_test, %download_path%, %currentLine%
		currentLine := currentLine + 1
		
		if(token_test == token)
		{
			FileReadLine, fingerprint_test, %download_path%, %currentLine%
			if(Fingerprint == fingerprint_test){
				
				currentLine := currentLine + 1
				FileReadLine, boughttime_test, %download_path%, %currentLine%
				
				if(boughttime_test > currentTime){
					
					FileDelete, %download_path%
					FileDelete, %save_path%
					FileAppend, %token%, %save_path%
					
					return true
					
				}else{
					FileDelete, %download_path%
					Msgbox Makronuzun süresi bitmiş!
					ExitApp
				}
			}else{
				FileDelete, %download_path%
				Msgbox Lütfen başka bilgisayardan giriş yapmaya çalışmayın!
				ExitApp
			}
		}else{
			MsgBox Girmiş olduğunuz anahtar sözcük yanlış!
			FileDelete, %download_path%
			return false
		}
	}	
}


;-------------------ENCRYPTION TEA CIPHER----------------------
TEA(ByRef y,ByRef z, k0,k1,k2,k3)
{                                   
	s = 0
	d = 0x9E3779B9
	Loop 32                          ; could be reduced to 8 for speed
	{
		k := "k" . s & 3              ; indexing the key
		y := 0xFFFFFFFF & (y + ((z << 4 ^ z >> 5) + z  ^  s + %k%))
		s := 0xFFFFFFFF & (s + d)  ; simulate 32 bit operations
		k := "k" . s >> 11 & 3
		z := 0xFFFFFFFF & (z + ((y << 4 ^ y >> 5) + y  ^  s + %k%))
	}
}

XCBC(x, u,v, k0,k1,k2,k3, l0,l1, m0,m1)
{
	Loop % Ceil(StrLen(x)/16)-1   ; full length intermediate message blocks
		XCBCstep(u, v, x, k0,k1,k2,k3)
	
	If (StrLen(x) = 16)              ; full length last message block
	{
		u := u ^ l0                   ; l-key modifies last state
		v := v ^ l1
		XCBCstep(u, v, x, k0,k1,k2,k3)
	}
	Else {                           ; padded last message block
		u := u ^ m0                   ; m-key modifies last state
		v := v ^ m1
		x = %x%100000000000000
		XCBCstep(u, v, x, k0,k1,k2,k3)
	}
	Return Hex8(u) . Hex8(v)         ; 16 hex digits returned
}

XCBCstep(ByRef u, ByRef v, ByRef x, k0,k1,k2,k3)
{
	StringLeft  p, x, 8              ; Msg blocks
	StringMid   q, x, 9, 8
	StringTrimLeft x, x, 16
	p = 0x%p%
	q = 0x%q%
	u := u ^ p
	v := v ^ q
	TEA(u,v,k0,k1,k2,k3)
}

Hex8(i)                             
{
	format = %A_FormatInteger%       ; save original integer format
	SetFormat Integer, Hex
	i += 0x100000000                 ; convert to hex, set MS bit
	StringTrimLeft i, i, 3           ; remove leading 0x1
	SetFormat Integer, %format%      ; restore original format
	Return i
}

Hex(ByRef b, n=0)                   
{                                   
	format = %A_FormatInteger%       ; save original integer format
	SetFormat Integer, Hex           ; for converting bytes to hex
	
	m := VarSetCapacity(b)
	If (n < 1 or n > m)
		n := m
	Loop %n%
	{
		x := 256 + *(&b+A_Index-1)    ; get byte in hex, set 17th bit
		StringTrimLeft x, x, 3        ; remove 0x1
		h = %h%%x%
	}
	SetFormat Integer, %format%      ; restore original format
	Return h
}

GenerateRandomString(length) {
	characters := "0123456789abcdefghijklmnopqurstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789" 
	StringSplit, chars, characters
	Loop, %length%
	{
		Random, rand, 1, 64
		randomS .= chars%rand%
	}
	return randomS
}


;-------------------TIME FUNCTIONS----------------------
TIME_GetNetworkTime(Server := "time.windows.com", Port := 123, Timeout := 1000) {
	If !(Ws2 := DllCall("LoadLibrary", "Str", "Ws2_32.dll", "UPtr")) {
		Msg := "Ws2_32.dll could not be loaded!"
		Return TIME_GetNetworkTime_Error(Msg, Ws2, 0, 0)
	}
	; -----------------------------------------------------------------------------------------------------------------------------
	; Initialize the Winsock library - request Winsock 2.2
	VarSetCapacity(WsaData, 512, 0) ; more than sufficient
	If (Error := DllCall("Ws2_32.dll\WSAStartup", "UShort", 0x0202, "UInt", &WsaData, "Int")) {
		Msg := "WSAStartup() failed with error " . Error
		Return TIME_GetNetworkTime_Error(Msg, Ws2, 0, 0)
	}
	; -----------------------------------------------------------------------------------------------------------------------------
	; Name resolution
	If !(HostEnt := DllCall("Ws2_32.dll\gethostbyname", "AStr", Server, "UPtr")) {
		Msg := "gethostbyname() failed with error " . DllCall("Ws2_32.dll\WSAGetLastError", "Int")
		Return TIME_GetNetworkTime_Error(Msg, Ws2, 1, 0)
	}
	AddrList := NumGet(HostEnt + 0, (2 * A_PtrSize) + 4 + (A_PtrSize - 4), "UPtr")
	IpAddr := NumGet(AddrList + 0, 0, "UPtr")
	Addr := StrGet(DllCall("Ws2_32.dll\inet_ntoa", "UInt", NumGet(IpAddr + 0, 0, "UInt"), "UPtr"), "CP0")
	InetAddr := DllCall("Ws2_32.dll\inet_addr", "AStr", Addr, "UInt") ; convert address to 32-bit UInt
	If (InetAddr = 0xFFFFFFFF) { ; INADDR_NONE
		Msg := "inet_addr() failed for address " . Addr
		Return TIME_GetNetworkTime_Error(Msg, Ws2, 1, 0)
	}
	; -----------------------------------------------------------------------------------------------------------------------------
	; Create a socket: AF_INET = 2, SOCK_DGRAM = 2, IPPROTO_UDP = 17
	Socket := DllCall("Ws2_32.dll\socket", "UInt", 2, "UInt", 2, "UInt", 17, "UPtr")
	If (Socket = 0xFFFFFFFF) { ; INVALID_SOCKET
		Msg := "socket() indicated Winsock error " . DllCall("Ws2_32.dll\WSAGetLastError")
		ExitApp
		Return TIME_GetNetworkTime_Error(Msg, Ws2, 1, 0)
	}
	; -----------------------------------------------------------------------------------------------------------------------------
	; Connect to the socket
	VarSetCapacity(SocketAddr, 16, 0) ; size of sockaddr = 16
	NumPut(2, SocketAddr, 0, "Short") ; sin_family = AF_INET
	NumPut(DllCall("Ws2_32.dll\htons", "UShort", Port), SocketAddr, 2, "UShort") ; sin_port
	Numput(InetAddr, SocketAddr, 4, "UInt") ; sin_addr.s_addr
	If DllCall("Ws2_32.dll\connect", "Ptr", Socket, "UInt", &SocketAddr, "Int", 16) {
		Msg := "connect() indicated Winsock error " . DllCall("Ws2_32.dll\WSAGetLastError")
		ExitApp
		Return TIME_GetNetworkTime_Error(Msg, Ws2, 1, Socket)
	}
	; -----------------------------------------------------------------------------------------------------------------------------
	; Set the timeout for recv: SOL_SOCKET = 0xFFFF, SO_RCVTIMEO = 0x1006, SOCKET_ERROR = -1
	If (DllCall("Ws2_32.dll\setsockopt", "Ptr", Socket, "Int", 0xFFFF, "Int", 0x1006, "IntP", Timeout, "Int", 4, "Int") = -1) {
		Msg := "setsockopt() indicated Winsock error " . DllCall("Ws2_32.dll\WSAGetLastError")
		ExitApp
		Return TIME_GetNetworkTime_Error(Msg, Ws2, 1, Socket)
	}
	; -----------------------------------------------------------------------------------------------------------------------------
	; Send an NTP request
	VarSetCapacity(Data, 48, 0) ; NTP needs 48 bytes of data
	NumPut(0x1B, Data, "UChar") ; LI = 0 (no warning), VN = 3 (IPv4 only), Mode = 3 (Client Mode) -> 00 011 011
	If (DllCall("Ws2_32.dll\send", "Ptr", Socket, "Str", Data, "Int", 48, "Int", 0, "Int") = -1) { ; SOCKET_ERROR = -1
		Msg := "send() indicated Winsock error " . DllCall("Ws2_32.dll\WSAGetLastError")
		ExitApp
		Return TIME_GetNetworkTime_Error(Msg, Ws2, 1, Socket)
	}
	; -----------------------------------------------------------------------------------------------------------------------------
	; Shutdown sending
	DllCall("Ws2_32.dll\shutdown", "Ptr", Socket, "Int", 1) ; SD_SEND = 1
	; -----------------------------------------------------------------------------------------------------------------------------
	; Get the answer
	If (DllCall("Ws2_32.dll\recv", "Ptr", Socket, "Ptr", &Data, "Int", 48, "Int", 0, "Int") = -1) { ; SOCKET_ERROR = -1
		Msg := "recv() indicated Winsock error " . DllCall("Ws2_32.dll\WSAGetLastError")
		ExitApp
		Return TIME_GetNetworkTime_Error(Msg, Ws2, 1, Socket)
	}
	; -----------------------------------------------------------------------------------------------------------------------------
	; Free resources
	DllCall("Ws2_32.dll\closesocket", "Ptr", Socket)
	DllCall("Ws2_32.dll\WSACleanup") ; Terminate the use of the Winsock 2 DLL
	DllCall("FreeLibrary", "Ptr", Ws2)
	; -----------------------------------------------------------------------------------------------------------------------------
	; Get the time, we have to swap the byte order
	Sek := (NumGet(Data, 40, "Uchar") << 24) | (NumGet(Data, 41, "Uchar") << 16) | (NumGet(Data, 42, "Uchar") << 8)
	| NumGet(Data, 43, "Uchar")
	DT := "19000101"
	DT += Sek, S
	Return DT
}

TIME_GetNetworkTime_Error(Msg, HMOD, Startup, Socket) {
	MsgBox, 16, %A_ThisFunc%, %Msg%
	If (Socket)
		DllCall("Ws2_32.dll\closesocket", "Ptr", Socket)
	If (Startup)
		DllCall("Ws2_32.dll\WSACleanup") ; Terminate the use of the Winsock 2 DLL
	If (HMOD)
		DllCall("FreeLibrary", "Ptr", HMOD)
	Return 0
}

TIME_UTC_ToLocalTime(UTC := "") { 
	UTC += 0, S
	If UTC Is Not Time
		Return ""
	TIME_UTC_TS2SYSTEMTIME(UTC, UTCTime)
	VarSetCapacity(LocTime, 16, 0)
	DllCall("SystemTimeToTzSpecificLocalTime", "Ptr", 0, "Ptr", &UTCTime, "Ptr", &LocTime)
	Return TIME_UTC_SYSTEMTIME2TS(LocTime)
}

TIME_UTC_FromLocalTime(Local := "") { 
	Local += 0, S
	If Local Is Not Time
		Return ""
	TIME_UTC_TS2SYSTEMTIME(Local, LocTime)
	VarSetCapacity(UTCTime, 16, 0)
	DllCall("TzSpecificLocalTimeToSystemTime", "Ptr", 0, "Ptr", &LocTime, "Ptr", &UTCTime)
	Return TIME_UTC_SYSTEMTIME2TS(UTCTime)
}

TIME_UTC_TS2SYSTEMTIME(TS, ByRef SYSTEMTIME) { 
	VarSetCapacity(SYSTEMTIME, 16, 0)
	NumPut(SubStr(TS, 1, 4), SYSTEMTIME, 0, "UShort")
	NumPut(SubStr(TS, 5, 2), SYSTEMTIME, 2, "UShort")
	NumPut(SubStr(TS, 7, 2), SYSTEMTIME, 6, "UShort")
	NumPut(SubStr(TS, 9, 2), SYSTEMTIME, 8, "UShort")
	NumPut(SubStr(TS, 11, 2), SYSTEMTIME, 10, "UShort")
	NumPut(SubStr(TS, 13, 2), SYSTEMTIME, 12, "UShort")
	Return &SYSTEMTIME
}

TIME_UTC_SYSTEMTIME2TS(ByRef SYSTEMTIME) { 
	YYYY := NumGet(SYSTEMTIME, 0, "UShort")
	MM := NumGet(SYSTEMTIME, 2, "UShort")
	DD := NumGet(SYSTEMTIME, 6, "UShort")
	HH := NumGet(SYSTEMTIME, 8, "UShort")
	MN := NumGet(SYSTEMTIME, 10, "UShort")
	SS := NumGet(SYSTEMTIME, 12, "UShort")
	Return Format("{:04}{:02}{:02}{:02}{:02}", YYYY, MM, DD, HH, MN)
}



;-------------------G LABELS----------------------
Login:
Gui, submit, nohide
login_valid := loginChecks(pastebin_raw, token)
if(login_valid == true)
{
	MsgBox, Program Başlatıldı!
	
}
else
{
	MsgBox, Giriş Yapılamadı
}
return

Copy:
Clipboard := Fingerprint
return

GuiClose:
ExitApp
Return
