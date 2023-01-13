@echo off
wmic diskdrive get index | find /V "Index"