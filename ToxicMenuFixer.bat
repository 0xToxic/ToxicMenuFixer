@echo off

:menu

title Toxic Menu Fixer V2.0

color 3

cls

echo.
echo Toxic Menu Fixer V2.0
echo.
echo.
echo [+] Type 1 for Windows Activation
echo.
echo [+] Type 2 to fix Search bar
echo.
echo [+] Type 3 to close all programs 
echo.
echo [+] Type 4 to Fast close minecraft
echo.
echo [+] Type 5 to Fix TaskManager
echo.
echo [+] Type 6 to Clean Temp files 
echo.
echo [+] Type 7 for System Information Display
echo.
echo [+] Type 8 for Registry Cleaner
echo.
echo [+] Type 9 for Security Scanner
echo.
echo [+] Type 99 to close the Menu 
echo.
echo.
echo.
echo [+] type here :
echo.
echo.
echo.
echo RUN THIS AS ADMINISTRATOR TO WORK

set /p choice=

If %choice% EQU 1 goto WindowsActivation
If %choice% EQU 2 goto FixSearchBar
If %choice% EQU 3 goto CloseAllPrograms
If %choice% EQU 4 goto FastCloseMinecraft
If %choice% EQU 5 goto FixTaskManager
If %choice% EQU 6 goto CleanTemp
If %choice% EQU 7 goto SystemInformation
If %choice% EQU 8 goto RegistryCleaner
If %choice% EQU 9 goto SecurityScanner
If %choice% EQU 99 goto Exit

:Windows Activation

title Windows Activation Made by github/@0xtoxic

color a

cls

echo Please Wait to activate

slmgr /upk

slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX

slmgr /skms kms8.msguides.com

cls
echo.
echo.

echo Your Windows Has been Activated (:
echo.
echo.
echo.

pause

goto menu

:fix Search bar Made by ToxicMenuFixer

title fix Search bar

color a

cls

TASKKILL /F /IM explorer.exe

start explorer.exe

start ctfmon.exe

cls 
echo.
echo.


echo Your Search Bar has been Fixed
echo.
echo.

pause

goto menu

:Close

title Close all Programs

color a

cls

cd c:\windows\System32
for /f "skip=3 tokens=1" %%i in ('TASKLIST /FI "USERNAME eq %userdomain%\%username%" /FI "STATUS eq running"') do (
if not "%%i"=="svchost.exe" (
if not "%%i"=="explorer.exe" (
if not "%%i"=="cmd.exe" (
if not "%%i"=="tasklist.exe" (
echo.
taskkill /f /im "%%i" 
echo.
)
)
)
)
)

TASKKILL /F /IM explorer.exe

start explorer.exe

start ctfmon.exe

cls 
echo.
echo.


echo All the Programs has been Forced closed

echo.
echo.

pause

:exit

title exit

color a

cls

exit

pause


:minecraft

title Force close minecraft

color a

taskkill /f /im minecraft.exe

echo please wait ...

cls
echo.
echo.
echo.
echo.

echo minecraft.exe has been Forced closed

echo.
echo.
echo.
echo.

pause

:TaskManager

title TaskManager Fix Made By github.com/0xtoxic

color a

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 0 /f

cls


echo.
echo.
echo.
echo.
echo.
echo.


echo Your TaskManager has been fixed

echo.
echo.
echo.
echo.
echo.
echo.



echo Made By : 0xtoxic
pause


:Temp 

title Delete Temp Files 
color a


cls

echo.

cd/
del *.log /a /s /q /f
cd C:/ & del *.log /a /s /q /f
takeown /f "%temp%" /r /d y
RD /S /Q %temp%
MKDIR %temp%
takeown /f "%temp%" /r /d y
takeown /f "C:\Windows\Temp" /r /d y
RD /S /Q C:\Windows\Temp
MKDIR C:\Windows\Temp
takeown /f "C:\Windows\Temp" /r /d y
net stop wuauserv
net stop UsoSvc
rd /s /q C:\Windows\SoftwareDistribution
md C:\Windows\SoftwareDistribution
del /s /f /q c:\windows\temp\*.*
rd /s /q c:\windows\temp
md c:\windows\temp
del /s /f /q C:\WINDOWS\Prefetch
del /s /f /q %temp%\*.*
rd /s /q %temp%
md %temp%
deltree /y c:\windows\tempor~1
deltree /y c:\windows\temp
deltree /y c:\windows\tmp
deltree /y c:\windows\ff*.tmp
deltree /y c:\windows\history
deltree /y c:\windows\cookies
deltree /y c:\windows\recent
deltree /y c:\windows\spool\printers
del c:\WIN386.SWP

cls 

echo.
echo.
echo.
echo.
echo.
echo.


echo Your Temp files has been Cleaned .. Special thanks to Toxic

echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.

echo Cc :  Toxic#2228


echo.
echo.
echo.
echo.
echo.
echo.

:SystemInformation
systeminfo
pause
goto menu

:RegistryCleaner
REM Code for Registry Cleaner
goto menu

:SecurityScanner
REM Code for Security Scanner
goto menu

:Exit
exit
