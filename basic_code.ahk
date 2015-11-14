#SingleInstance, Force

CoordMode, Pixel, Screen
CoordMode, Mouse, Screen


WinTitle := "XXXX"
WinActivate, %WinTitle%

; 활성창 크기 가져오기
WinGetPos, WinX, WinY, WinWidth, WinHeight, %WinTitle%
if ( WinWidth < WinHeight )
{
     WinWidth := WinHeight
}
Else
{
     WinHeight := WinWidth
}
;MsgBox, %WinWidth% x %WinHeight%

; 활성창 이동
WinMove, %WinTitle%, , 0, 0


global WinHeight
global WinHeight
global X
global Y

Loop
{
  	ImageSearch, FoundX, FoundY, %X%, %Y%, %WinWidth%, %WinHeight%, *30 %A_ScriptDir%\img\XYZ.bmp
  	if (ErrorLevel = 0 ) {
      MouseClick, left, %FoundX%, %FoundY%
      sleep, 3000
  	}
  	
    sleep, 3000
}
