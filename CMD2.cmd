@echo off
pushd %~dp0
call %CD%\INDEX.cmd | findstr /v "^$"