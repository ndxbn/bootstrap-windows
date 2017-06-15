"C:\tools\mysql\current\bin\mysqldump.exe" %*
IF %ERRORLEVEL% NEQ 0 (
  PAUSE
)