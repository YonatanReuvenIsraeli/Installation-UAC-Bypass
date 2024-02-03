@echo off
setlocal
title Installation UAC Bypass
echo READ DISCLAIMER ^-^-^> THIS IS FOR EDUCATIONAL PURPOSES ONLY! DO NOT USE THIS ON SOMEONE ELSES PC WITHOUT THEIR EXPLICIT PERMISSION! THIS IS A HACK! CONTINUE AT YOUR OWN RISK! WE HOLD NO RESPONSIBILITY FOR ANYTHING THAT HAPPEND, IS HAPPENING, AND/OR WILL HAPPEN BECAUSE OF THIS BATCH FILE!
goto :Disclaimer

:Disclaimer
echo.
set /p Disclaimer="Do you agree to the Disclaimer? (Yes/No) "
if /i "%Disclaimer%"=="Yes" goto :Start
if /i "%Disclaimer%"=="No" goto :Exit
echo Invalid Syntax!
goto :Disclaimer

:Start
echo.
echo Make sure to change the installation folder to %USERPROFILE%\AppData\Local. Press any key to start the installation process.
pause
set __COMPAT_LAYER=RunAsInvoker
echo.
set /p Program="What is the full path of the program are you trying to install? "
start "" "%Program%"
if errorlevel 1 goto :Start
goto :Exit

:Exit
endlocal
exit
