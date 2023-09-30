@echo off

set /a var = 0
:loop
echo Hello, World!
timeout /t 1 >nul
echo I am never ending counting %var% times
set /a var+=1
goto :loop