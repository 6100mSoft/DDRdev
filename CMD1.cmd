@echo off
pushd %~dp0
call %CD%\STATUS.cmd | findstr /v "^$"