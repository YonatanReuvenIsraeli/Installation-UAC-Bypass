@echo off
setlocal
title Installation UAC Bypass
echo Program Name: Installation UAC Bypass
echo Version: 1.1.0
echo Developer: @YonatanReuvenIsraeli
echo Website: https://www.yonatanreuvenisraeli.dev
echo License: GNU General Public License v3.0
echo.
echo READ DISCLAIMER ^-^-^> THIS IS FOR EDUCATIONAL PURPOSES ONLY! DO NOT USE THIS ON SOMEONE ELSES PC WITHOUT THEIR EXPLICIT PERMISSION! THIS IS A HACK! CONTINUE AT YOUR OWN RISK! WE HOLD NO RESPONSIBILITY FOR ANYTHING THAT HAPPEND, IS HAPPENING, AND/OR WILL HAPPEN BECAUSE OF THIS BATCH FILE!
goto Disclaimer

:Disclaimer
echo.
set Disclaimer=
set /p Disclaimer="Do you agree to the Disclaimer? (Yes/No) "
if /i "%Disclaimer%"=="Yes" goto Start
if /i "%Disclaimer%"=="No" goto Exit
echo Invalid Syntax!
goto Disclaimer

:Start
echo.
set Program=
set /p Program="What is the full path of the program are you trying to install? "
goto Sure

:Sure
echo.
set Sure=
set /p Sure="Are you sure "%Program%" is the full path to the program you want to install? (Yes/No) "
if /i "%Sure%"=="Yes" goto Run
if /i "%Sure%"=="No" goto Start
echo Invalid Syntax!
goto Sure

:Run
echo.
echo Make sure to change the installation folder to "%USERPROFILE%\AppData\Local". You can add a start menu shortcut of your program to "%APPDATA%\Microsoft\Windows\Start Menu\Programs" if you want. Press any key to start the installation process.
pause > nul
set __COMPAT_LAYER=RunAsInvoker
start "" "%Program%"
if not "%errorlevel%"=="0" goto Start
goto Exit

:Exit
endlocal
exit
