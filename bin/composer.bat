php "%~dp0\composer.phar" %*
IF %ERRORLEVEL% NEQ 0 (
  PAUSE
)