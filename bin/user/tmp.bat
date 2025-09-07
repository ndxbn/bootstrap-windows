@echo off
setlocal enabledelayedexpansion
set "TARGETDIR=%USERPROFILE%\Desktop\tmp\%date:/=%-%time::=0%"
mkdir "%TARGETDIR%"
start explorer "%TARGETDIR%"
endlocal
