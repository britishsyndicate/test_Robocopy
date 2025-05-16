@echo off
:: THIS IS VERY IMPORTANT!!!
:: If this text looks weird to you in Notepad, it's because you need Notepad++ to see this correctly
:: Created by u/BritishSyndicate on Reddit (aka Grim - VTuber)

Setlocal
::EchoANSI.cmd
cls
:: Display a sample of all the ANSI colours.
:: Requires windows 1909 or newer

:: Define foreground and background ANSI colors:
Set _fBlack=[30m
Set _bBlack=[40m
Set _fRed=[31m
Set _bRed=[41m
Set _fGreen=[32m
Set _bGreen=[42m
Set _fYellow=[33m
Set _bYellow=[43m
Set _fBlue=[34m
Set _bBlue=[44m
Set _fMag=[35m
Set _bMag=[45m
Set _fCyan=[36m
Set _bCyan=[46m
Set _fLGray=[37m
Set _bLGray=[47m
Set _fDGray=[90m
Set _bDGray=[100m
Set _fBRed=[91m
Set _bBRed=[101m
Set _fBGreen=[92m
Set _bBGreen=[102m
Set _fBYellow=[93m
Set _bBYellow=[103m
Set _fBBlue=[94m
Set _bBBlue=[104m
Set _fBMag=[95m
Set _bBMag=[105m
Set _fBCyan=[96m
Set _bBCyan=[106m
Set _fBWhite=[97m
Set _bBWhite=[107m
Set _RESET=[0m
Set b=[1m
Set u=[4m
Set i=[7m

:check_Permissions
cls
echo Administrative permissions required. Detecting permissions...

net session >nul 2>&1
if %errorLevel% == 0 (
    echo Success: Administrative permissions confirmed.
	set _admin="yes"
	title Robocopy - A fast and secure file transfer method
) else (
    echo Failure: Current permissions inadequate.
	set _admin="no"
	title Normal: Robocopy - A fast and secure file transfer method
)
echo.
echo 
goto real_start

:real_start
cls
echo %_fBRed%%u%THIS IS A WARNING SCREEN AND PROMPT!!%_RESET%
echo.
Echo:
Echo  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
Echo  ³                                                                           ³
Echo  ³ This program is a very fast file transfer system.                         ³
Echo  ³                                                                           ³
Echo  ³ If (yes) this may cause most, IF NOT all, downloads to be interupted.     ³
Echo  ³ This may also make your coputer consideribaly slower while in action.     ³
Echo  ³ This will also automatically move files (rather then copy them)           ³
Echo  ³                                                                           ³
Echo  ³ %_fCyan%If you achknowledge this, please put (%_RESET%%_fGreen%%u%yes/y%_RESET%%_fCyan%) (or press %_RESET%%_fGreen%%u%Enter%_RESET%%_fCyan%) bellow.%_RESET%     ³
Echo  ³                                                                           ³
if %_admin%=="no" (
	Echo  ³ %_fBWhite%%_bBRed%This program currently does NOT have Administrator's Privlages!!%_RESET%          ³
	Echo  ³ %_fBWhite%%_bBRed%Please run this program again as an Administrator!!%_RESET%                       ³
	Echo  ³                                                                           ³
)
Echo  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
Echo:
echo.
echo This is a %u%%_fYellow%ONE TIME%_RESET% prompt (for this session ONLY).
CHOICE /n /c yn /m "[Y/N]: "
if %errorlevel% EQU 1 goto Continue
if %errorlevel% EQU 2 goto End

:End
Echo.
Echo.
Echo Goodbye! :)
timeout 5

:Continue
echo.
echo Folder ^& Files PATH to Move (includes mentioned folder) (you don't need to include /")
set /p sauce = :: ^> 
set "options=|""|"

	echo NEW EDIT: ^> %sauce%
if "!options:|%string%|=!" neq "%options%" (
	set "sauce=%sauce%"
	echo NEW EDIT: ^> %sauce%
)
echo.
echo Where to move it to? PATH (can be located in a different drive)
set /p point = :: ^> 





set String=%sauce%
for /f "delims=" %%a in ("%String%") do (
    echo %String% | findstr /I /R /C:".*"".*" >nul
    if "!errorlevel!" == "1" (
		set String = "%sauce%"
		echo NEW EDIT: ^> %String%
	)
)

 ::  robocopy "C:\Windows.old" A:\ *.* /move /e /z /zb /j /r:5 /v /x /nc /ns /eta
 :: https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/robocopy
 :: https://www.robvanderwoude.com/escapechars.php
 
 
 
 :: A:\Users\UltraGaming\Music\Ai Text to Speech Reddit Stories