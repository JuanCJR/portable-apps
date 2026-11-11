@echo off
rem Une las partes de partes\ en Spotify.zip y lo extrae a la carpeta Spotify\
cd /d "%~dp0"
if exist "Spotify\Spotify.exe" (
  echo Ya existe la carpeta Spotify. Borrala si quieres reinstalar.
  pause
  exit /b 0
)
copy /b "partes\Spotify.zip.part00"+"partes\Spotify.zip.part01"+"partes\Spotify.zip.part02" "Spotify.zip" >nul || goto error
tar -xf "Spotify.zip" || goto error
echo Listo. Abre Spotify.bat
pause
exit /b 0
:error
echo Algo fallo al unir o extraer.
pause
exit /b 1
