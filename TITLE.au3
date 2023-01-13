#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Change2CUI=y
#AutoIt3Wrapper_Add_Constants=n
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <Process.au3>
$part1 = "for /f " & '"' & "delims=" & '"'
$part2 = " %x in (KANJI.BIN) do title " & '"' & "%x | 6100msoft Windows 7 Embedded Bootup System" & '"'
;MsgBox("INFO", $part1 & $part2, $part1 & $part2)
_RunDos("@echo off")
_RunDos($part1 & $part2)
_RunDos("cls")
ConsoleWrite("@CRLF")