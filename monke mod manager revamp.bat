@echo off
echo MADE BY CURSEDDEV ON DISCORD!
timeout /t 3 >nul
cls

set steamPath1="C:/Program Files (x86)/Steam/steamapps/common/Gorilla Tag"
set steamPath2="D:/SteamLibrary/steamapps/common/Gorilla Tag"
set steamPath3="C:/Program Files/Oculus/Software/Software/another-axiom-gorilla-tag"

if exist %steamPath1% (
    set gamePath=%steamPath1%
) else if exist %steamPath2% (
    set gamePath=%steamPath2%
) else if exist %steamPath3% (
    set gamePath=%steamPath3%
) else (
    color 0c
    Echo Gorilla Tag directory not found.
    set /p gamePath=Enter the path of gorilla tag:
)

cd %gamePath%
cd Bepinex
cd plugins
echo Welcome to MonkeMods1.00b
echo Whats new:
echo removed newtilla (outdated and unsupported)
echo updated WhoIsTalking!
echo updated Gorilla Shirts!
echo Adds working utilla!!
echo Adds grate mod menu
echo.
echo.
echo WhoIsTalking *name tag mod* (1)
echo GorillaShirts *custom shirts and player models!* (2)
echo Utilla *modded and custom gamemodes. Required by some mods* (3)
echo Grate mod menu *A legal mod menu forked from bark. will automatically install utilla* (4)
echo.
echo.
echo more will be added soon!
set /p selectedmod=What would you like to install: 
if "%selectedmod%"=="1" (
   curl -L -s https://github.com/The-Graze/WhoIsTalking/releases/download/5.2.1/WhoIsTalking.dll --output WhoIsTalking.dll
   echo Mod added!
)
if "%selectedmod%"=="2" (
   curl -L -s https://github.com/developer9998/GorillaShirts/releases/download/v1.2.1/GorillaShirts.dll --output GorillaShirts.dll
   echo Mod added!
)
if "%selectedmod%"=="3" (
   curl -L -s https://github.com/developer9998/Utilla/releases/download/1.6.18/Utilla.dll --output Utilla.dll
   echo Mod added!
)
if "%selectedmod%"=="4" (
   curl -L -s https://github.com/developer9998/Utilla/releases/download/1.6.18/Utilla.dll --output Utilla.dll
   curl -L -s https://github.com/The-Graze/Grate/releases/download/1.7.3/Grate.dll --output Grate.dll
   echo Mod added!
)
pause
