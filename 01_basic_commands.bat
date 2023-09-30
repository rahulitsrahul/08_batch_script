@echo off

:: initiate variables

:: Arithmatic Operations
:: /A Set a numeric  variable
set /A var_1=25 
set /A var_2=10
set /A var_3=%var_1%+%var_2%

:: String Operations
set var_4=my string_1_
set var_5=this is_string_2
:: Concatenate strings
set var_6=%var_4%%var_5% 

:: User Input
echo "Enter a name ex.(Jack)
set /P var_7=

:: User Argument
set var_8=%1

:: ------------Functions and init loop------------

:: Goto main
goto :init


:function_1
	echo I am in funciton 1
	goto :eof
	
:function_2
	echo I am in funciton 2
	goto :eof

goto :eof

:init
	echo "Script Initiated"
	echo %var_3%
	echo %var_6%
	echo User input: %var_7%
	echo User Argument: %var_8%
	
	:: call Functions
	call :function_2
	echo funciton-2 is called
	
	call :function_1
	echo function-1 is called
	
	:eof