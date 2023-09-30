@echo off

:: command 02_functions -add

set cwd=%cd%
echo current working directory is %cwd%

echo Arithmatic Operation between two variables

echo Enter variable_1 value
set /p var_1=

echo Enter variable_2 value
set /p var_2=

goto :init


:add
	set /a addition=%var_1%+%var_2%
	echo addition result is %addition%
	goto :eof
	
:sub
	set /a subtraction=%var_1%-%var_2%
	echo subtraction result is %subtraction%
	goto :eof

:init
	echo given arg is %1
	if "%1"=="-add" (
		call :add
	) else if "%1"=="-sub" (
		call :sub
	) else (
		echo Invalid Argument. Please use -add or -sub
	)
	goto :eof