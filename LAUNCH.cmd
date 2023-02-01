@echo off
cls
chcp 65001>nul
setlocal enabledelayedexpansion
call %~dp0\TASKS.cmd
type %~dp0\MSG.BIN
cd C:\MDX
cd contents
type %~dp0\TEXT.BIN
type %~dp0\COUNTDOWN.BIN
timeout 1 >nul
set count1=0
set count2=0
echo * Launching game in ten seconds....
for /L %%i in (10, -1, 1) do (
	IF count1==11 (
		call EXECUTOR.cmd
	) ELSE (
		echo * Starting in %%i seconds...
		timeout 1 >nul
		set /a count1=%count1%+1
	)
)
call %~dp0hidecmd.exe %~dp0CRLF.exe
start "" "gamestart-spice.bat"
for /L %%i in (10, -1, 1) do (
	IF count2==11 (
		call EXECUTOR.cmd
	) ELSE (
		echo * Exiting in %%i seconds...
		timeout 1 >nul
		set /a count2=%count2%+1
	)
)
exit
