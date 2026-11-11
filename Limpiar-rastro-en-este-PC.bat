@echo off
rem Borra la cache y sesion que Spotify deja en ESTE equipo. Ejecutalo con Spotify cerrado.
tasklist /FI "IMAGENAME eq Spotify.exe" | find /I "Spotify.exe" >nul
if not errorlevel 1 (
  echo Cierra Spotify primero.
  pause
  exit /b 1
)
echo Se borrara %LOCALAPPDATA%\Spotify y la sesion guardada en la copia portable.
choice /M "Continuar"
if errorlevel 2 exit /b 0
rmdir /S /Q "%LOCALAPPDATA%\Spotify" 2>nul
rmdir /S /Q "%~dp0Spotify\Users" 2>nul
del /Q "%~dp0Spotify\ad-device-state" 2>nul
echo Listo.
pause
