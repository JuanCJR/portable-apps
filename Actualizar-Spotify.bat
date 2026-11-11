@echo off
rem Copia la version de Spotify instalada en este PC a la carpeta portable.
rem No copia tu sesion (prefs, Users) para que el portable no lleve credenciales.
tasklist /FI "IMAGENAME eq Spotify.exe" | find /I "Spotify.exe" >nul
if not errorlevel 1 (
  echo Cierra Spotify del todo ^(tambien desde la bandeja^) y vuelve a ejecutar esto.
  pause
  exit /b 1
)
if not exist "%APPDATA%\Spotify\Spotify.exe" (
  echo No hay Spotify instalado en %APPDATA%\Spotify
  pause
  exit /b 1
)
robocopy "%APPDATA%\Spotify" "%~dp0Spotify" /MIR /XD Users /XF prefs ad-device-state /R:1 /W:1 /NFL /NDL
echo Listo.
pause
