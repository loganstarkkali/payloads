@echo off
:loop
start notepad.exe
timeout /t 2 >nul
goto loop
