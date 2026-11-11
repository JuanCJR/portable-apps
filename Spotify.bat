@echo off
rem Abre la copia portable de Spotify que esta junto a este archivo
if not exist "%~dp0Spotify\Spotify.exe" (
  echo Falta la carpeta Spotify. Ejecuta primero Instalar-desde-partes.bat
  pause
  exit /b 1
)
start "" "%~dp0Spotify\Spotify.exe"
