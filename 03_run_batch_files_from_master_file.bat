@echo off
:: This example show how to call other .bat files form a batch file

goto :main

:main
	start "test_file_1" test_file_1.bat
	start "test_file_2" test_file_1.bat
	:: wait for 4 secs
	timeout /t 4
	
	:: Close the second batch script by sending a CTRL+C signal
	taskkill /fi "windowtitle eq test_file_1 - test_file_1.bat"
	
	:: wait for 2 more secs
	timeout /t 2
	
	:: Close the third batch script by sending a CTRL+C signal
	taskkill /fi "windowtitle eq test_file_2 - test_file_1.bat"
	
	echo DONE
	goto :eof