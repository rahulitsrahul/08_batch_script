@echo off

set /a var = 0
:loop
echo Hey, There!
timeout /t 1 >nul
echo I am running file-2 %var% times
set /a var+=1
goto :loop