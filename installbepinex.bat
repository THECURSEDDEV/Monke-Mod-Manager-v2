@echo off
echo MADE BY CURSEDDEV ON DISCORD
timeout /t 3 >nul

set "url=https://pastebin.com/raw/52iSUQLL"

set "steamPath1=C:\Program Files (x86)\Steam\steamapps\common\Gorilla Tag"
set "steamPath2=D:\SteamLibrary\steamapps\common\Gorilla Tag"
set "steamPath3=C:\Program Files\Oculus\Software\Software\another-axiom-gorilla-tag"

set "bepinex1=%steamPath1%\BepInEx"
set "bepinex2=%steamPath2%\BepInEx"
set "bepinex3=%steamPath3%\BepInEx"

if exist "%steamPath1%" (
    set "gamePath=%steamPath1%"
) else if exist "%steamPath2%" (
    set "gamePath=%steamPath2%"
) else if exist "%steamPath3%" (
    set "gamePath=%steamPath3%"
) else (
    color 0c
    echo Gorilla Tag directory not found.
    set /p "gamePath=Enter the path of Gorilla Tag: "
)

cd /d "%gamePath%"

if exist "%bepinex1%" (
    goto :hasbepinex
) else if exist "%bepinex2%" (
    goto :hasbepinex
) else if exist "%bepinex3%" (
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
