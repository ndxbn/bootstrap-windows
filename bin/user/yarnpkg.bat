"%APPDATA%\npm\yarnpkg.cmd" %*
IF %ERRORLEVEL% NEQ 0 (
  PAUSE
)