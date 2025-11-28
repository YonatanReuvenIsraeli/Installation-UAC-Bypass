@echo off
title Installation UAC Bypass
setlocal
echo Program Name: Installation UAC Bypass
echo Version: 2.0.6
echo License: GNU General Public License v3.0
echo Developer: @YonatanReuvenIsraeli
echo GitHub: https://github.com/YonatanReuvenIsraeli
echo Sponsor: https://github.com/sponsors/YonatanReuvenIsraeli
"%windir%\System32\net.exe" user > nul 2>&1
if not "%errorlevel%"=="0" goto "InWindowsPreinstallationEnvironmentWindowsRecoveryEnvironment"
goto "Disclaimer"

:"InWindowsPreinstallationEnvironmentWindowsRecoveryEnvironment"
echo.
echo You are in Windows Preinstallation Environment or Windows Recovery Environment! You must run this batch file in Windows. Press any key to close this batch file.
pause > nul 2>&1
goto "Exit"

:"Disclaimer"
echo.
echo READ DISCLAIMER ^-^-^> THIS IS FOR EDUCATIONAL PURPOSES ONLY! DO NOT USE THIS ON SOMEONE ELSE'S PC WITHOUT THEIR EXPLICIT PERMISSION! THIS IS A HACK! CONTINUE AT YOUR OWN RISK! @YONATANTREUVENISRAELI HOLDS NO RESPONSIBILITY FOR ANYTHING THAT HAPPENED, IS HAPPENING, AND/OR WILL HAPPEN BECAUSE OF THIS BATCH FILE!
echo.
set Disclaimer=
set /p Disclaimer="Do you agree to the Disclaimer? (Yes/No) "
if /i "%Disclaimer%"=="Yes" goto "Start"
if /i "%Disclaimer%"=="No" goto "Exit"
echo Invalid syntax!
goto "Disclaimer"

:"Start"
echo.
set Program=
set /p Program="What is the full path of the program are you trying to install? "
goto "Sure"

:"Sure"
echo.
set Sure=
set /p Sure="Are you sure "%Program%" is the full path to the program you want to install? (Yes/No) "
if /i "%Sure%"=="Yes" goto "CheckExist"
if /i "%Sure%"=="No" goto "Start"
echo Invalid syntax!
goto "Sure"

:"CheckExist"
if not exist "%Program%" goto "NotExist"
goto "Run"

:"NotExist"
echo "%Program%" does not exist. Please try again.
goto "Start"

:"Run"
echo.
echo Make sure to change the installation folder to "%USERPROFILE%\AppData\Local". You can add a start menu shortcut of your program to "%APPDATA%\Microsoft\Windows\Start Menu\Programs" if you want. Press any key to start the installation process and close this batch file.
pause > nul 2>&1
set __COMPAT_LAYER=RunAsInvoker
start "" "%Program%"
endlocal
exit
