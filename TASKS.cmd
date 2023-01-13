@echo off
setlocal enabledelayedexpansion
setlocal enableextensions
chcp 65001>nul
pushd %~dp0
call %~dp0\TITLE.exe | findstr "bootup"
cls
type %~dp0\STRING.BIN
set NLC=^
set NL=^^^%NLC%%NLC%^%NLC%%NLC%
type %~dp0\ROM.BIN
echo %NF%* Check RTC.
call %~dp0\STRIP.exe
call %~dp0\TIME.exe
call %~dp0\STRING.exe
FOR /F "tokens=* USEBACKQ" %%F IN (`call CMD1.cmd`) DO (
  SET var!count!=%%F
  SET /a count=!count!+1
)
FOR /F "tokens=* USEBACKQ" %%F IN (`call CMD2.cmd`) DO (
  SET /a count2=!count2!+1
  set NEW=^&echo.
  call executor.cmd
  echo %NL% %NEW% * Drive !count2! is !var%count2%!
)
call %~dp0\TYPER.cmd
timeout 20 >nul
echo * Now initating bootup sequence, please wait