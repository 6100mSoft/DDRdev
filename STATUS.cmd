@echo off
cls
wmic diskdrive get status | find /V "Status"