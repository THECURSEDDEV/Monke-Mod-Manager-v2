@echo off
echo MADE BY CURSEDDEV ON DISCORD
timeout /t 3 >nul

set "url=https://pastebin.com/raw/52iSUQLL"

set /p "gamePath=Enter the path of the game you want to mod: "

set "bepinex=%gamePath%\BepInEx"

cd /d "%gamePath%"

if exist "%bepinex%" (
    goto :hasbepinex
)

cls
echo No BepInEx found. Proceeding...

echo Downloading BepInEx...
curl -L -s https://github.com/BepInEx/BepInEx/releases/download/v5.4.23.2/BepInEx_win_x64_5.4.23.2.zip --output bepinexfiles.zip

echo Extracting...
powershell -c "Expand-Archive 'bepinexfiles.zip' '.' -Force"

echo Cleaning up...
del bepinexfiles.zip

cd BepInEx
mkdir plugins
mkdir config
cd config

echo Downloading config...
curl -s "%url%" > BepInEx.cfg

echo Modding complete!
pause
exit /b

:hasbepinex
cls
echo BepInEx already installed or corrupted. Delete winhttp.dll, BepInEx folder, doorstop_config.ini, changelogs.txt, and .doorstop_version.
pause
exit /b
