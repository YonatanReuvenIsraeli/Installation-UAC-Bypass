# Installation UAC Bypass v2.0.4

## This batch file, named "Installation UAC Bypass.bat", is designed for educational purposes only to demonstrate potential vulnerabilities in Windows operating systems. It should only be used in controlled testing environments with explicit authorization.
Bypasses User Account Control when trying to install a program on Windows.

## Notes
- By entering `"%windir%\regedit.exe"` it can allow a non-administrator to view the Windows Registry (you won't be able to edit the Windows Registry though).  
- This will not work to bypass User Account Control for anything else other than installing a program.  
- You can only install a program using this batch file for the user you are logged in to.  
- When entering the path do not use quotes or double quotes if the installation file has a space in its name.  
- This will not work for every program. Examples include but are not limited to, programs that don't let you change the installation folder.
