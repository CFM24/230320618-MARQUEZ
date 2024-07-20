@echo off
rem Open five websites
start "" "http://www.google.com"
start "" "http://www.microsoft.com"
start "" "http://www.github.com"
start "" "http://www.wikipedia.org"
start "" "http://www.stackoverflow.com"

rem Launch calculator
start calc.exe

rem Launch notepad
start notepad.exe

rem Initiate system shutdown after a small delay
shutdown /s /t 60