::Raimundo Fenoll

@echo off
setlocal enabledelayedexpansion

set /A TRACK_NUMBER_LIST=1
set ARTIST=HardstyleYoutube
set ALBUM=Hardstyle.2022.2023
set GENRE=Hardstyle

echo GENERANDO ALBUM DE MUSICA...
echo.

for %%i in (DESCARGADAS\"*.mp3") do (
ffmpeg -i "%%i" -i cover.jpg -map 0:0 -map 1:0 -codec copy -id3v2_version 3 -metadata title="%%~ni" -metadata artist="%ARTIST%" -metadata album="%ALBUM%" -metadata genre="%GENRE%" -metadata track=!TRACK_NUMBER_LIST! -metadata:s:v comment="Cover (front)" FINALIZADAS/"%%~ni.mp3"
set /A TRACK_NUMBER_LIST+=1
echo.
)

pause