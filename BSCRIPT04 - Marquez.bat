@echo off
setlocal

rem Sort text files on Drive C: by date
for /f "delims=" %%i in ('dir C:\*.txt /b /o-d') do (
    echo %%i
)

rem Archive older files to a folder on Drive Z:
set archiveDir=Z:\ArchivedFiles
if not exist %archiveDir% mkdir %archiveDir%
for /f "delims=" %%i in ('dir C:\*.txt /b /o-d') do (
    move C:\%%i %archiveDir%
)

rem Sort the archived files by size
for /f "delims=" %%i in ('dir %archiveDir%\*.txt /b /o-s') do (
    echo %%i
)

rem Prompt the user for permission to delete the old, large files
echo Do you want to delete the old, large files in the archive? (y/n)
choice /c yn /m "Enter your choice:"
if errorlevel 2 goto END
if errorlevel 1 goto DELETE

:DELETE
for /f "delims=" %%i in ('dir %archiveDir%\*.txt /b /o-s') do (
    del %archiveDir%\%%i
)
goto END

:END
echo Task completed.
pause
