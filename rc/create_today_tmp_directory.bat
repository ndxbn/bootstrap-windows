REM ECHO off
REM make todays temp directory
SET today_formated=%date:/=_%
SET today_tmp_directory_path=%userprofile%\documents\tmp\%today_formated%
REM If exit tmp directory, reuse it. It is not have to recreate.
REM temp directory path may rwitable, because it starts %userprofile%
MD %today_tmp_directory_path%

REM Remove "C:\tmp" junction if it exists.
REM This fails that "C:\tmp" is only one of "not exists", "unwritable" or "not empty directory".
REM Conversely, It can success it is only "junction", "symbolic link" or "empty directory".
REM This error handling is graceful exit. "not exists" may rightly state, but go to fail.
RD C:\tmp || GOTO FAIL

REM Make "C:\tmp" junction
MKLINK /J C:\tmp %today_tmp_directory_path% || GOTO FAIL

:FAIL
ECHO %ERROR_CODE%
GOTO EOF

:SUCCESS
GOTO EOF

:EOF
REM End Of File