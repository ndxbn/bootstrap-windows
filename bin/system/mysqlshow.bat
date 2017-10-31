"C:\tools\mysql\current\bin\mysqlshow.exe" %*
IF %ERRORLEVEL% NEQ 0 (
  PAUSE
)