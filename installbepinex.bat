@echo off
echo MADE BY CURSEDDEV ON DISCORD
timeout /t 3 >nul
set "url=https://pastebin.com/raw/52iSUQLL"
set /p gtagpath=Enter the path of gorilla tag: 
cls
echo Downloading bepinex...
cd %gtagpath%
curl -L -s https://github.com/BepInEx/BepInEx/releases/download/v5.4.23.2/BepInEx_win_x64_5.4.23.2.zip --output bepinexfiles.zip
cls
echo Extracting bepinex...
tar -xf "bepinexfiles.zip"
echo Deleting unextracted file
del bepinexfiles.zip
cd bepinex
mkdir plugins
mkdir config
cd config
cls
echo Downloading config file...
curl -s "%url%" > "Bepinex.cfg"
cls
echo Modding complete!
pause