#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0
#SingleInstance, force
#Persistent 
#InstallMouseHook
#InstallKeybdHook
#MaxThreadsPerHotkey 2
#MaxMem 256
ListLines Off
Process, Priority, , H
SetBatchLines, -1
SetKeyDelay, -1, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
SetWinDelay, -1
SetControlDelay, -1
CoordMode, Mouse, Screen
CoordMode, Pixel, Screen
CoordMode, Tooltip,Screen
SendMode Input
SetWorkingDir %A_WorkingDir%  
Thread, interrupt, 0
OnMessage(0x5555, "MsgMonitor")
OnMessage( 0xF, "WM_PAINT")
OnMessage(0x200, Func("ShowToolTip"))  ; WM_MOUSEMOVE