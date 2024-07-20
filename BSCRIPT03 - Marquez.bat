@echo off
setlocal

:MENU
cls
echo Choose a utility to execute:
echo 1. ipconfig
echo 2. tasklist
echo 3. taskkill
echo 4. chkdsk
echo 5. format
echo 6. defrag
echo 7. find
echo 8. attrib
choice /c 12345678 /m "Enter your choice:"
if errorlevel 8 goto ATTRIB
if errorlevel 7 goto FIND
if errorlevel 6 goto DEFRAG
if errorlevel 5 goto FORMAT
if errorlevel 4 goto CHKDSK
if errorlevel 3 goto TASKKILL
if errorlevel 2 goto TASKLIST
if errorlevel 1 goto IPCONFIG

:IPCONFIG
ipconfig
if errorlevel 1 echo Error executing ipconfig
goto MENU

:TASKLIST
tasklist
if errorlevel 1 echo Error executing tasklist
goto MENU

:TASKKILL
set /p pid=Enter the PID to kill: 
if "%pid%"=="" echo PID cannot be empty & goto MENU
taskkill /pid %pid%
if errorlevel 1 echo Error executing taskkill
goto MENU

:CHKDSK
set /p drive=Enter the drive to check (e.g., C:): 
if "%drive%"=="" echo Drive cannot be empty & goto MENU
chkdsk %drive%
if errorlevel 1 echo Error executing chkdsk
goto MENU

:FORMAT
set /p drive=Enter the drive to format (e.g., D:): 
if "%drive%"=="" echo Drive cannot be empty & goto MENU
echo WARNING: Formatting will erase all data on the drive.
pause
format %drive%
if errorlevel 1 echo Error executing format
goto MENU

:DEFRAG
set /p drive=Enter the drive to defrag (e.g., C:): 
if "%drive%"=="" echo Drive cannot be empty & goto MENU
defrag %drive%
if errorlevel 1 echo Error executing defrag
goto MENU

:FIND
set /p string=Enter the string to find: 
if "%string%"=="" echo Search string cannot be empty & goto MENU
set /p file=Enter the file to search in: 
if "%file%"=="" echo File cannot be empty & goto MENU
find "%string%" %file%
if errorlevel 1 echo Error executing find
goto MENU

:ATTRIB
set /p file=Enter the file to change attributes: 
if "%file%"=="" echo File cannot be empty & goto MENU
attrib %file%
if errorlevel 1 echo Error executing attrib
goto MENU

:END
echo Task completed.
pause
goto MENU
