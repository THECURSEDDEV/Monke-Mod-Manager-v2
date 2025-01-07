@echo off
echo MADE BY CURSEDDEV ON DISCORD!
timeout /t 3 >nul
cls
set /p gtagpath=Enter the path of gorilla tag: 
cd %gtagpath%
cd Bepinex
cd plugins
echo Newtilla *new utilla* (1)
echo WhoIsTalking *name tag mod* (2)
echo more will be added soon!
set /p selectedmod=What would you like to install: 
if "%selectedmod%"=="1" (
   :: Download the mod
   curl -L -s https://github.com/Loafiat/Newtilla/releases/download/1.1.0/Newtilla.dll --output Newtilla.dll
   echo Mod added!
)
if "%selectedmod%"=="2" (
   :: Download the mod
   curl -L -s https://github.com/The-Graze/WhoIsTalking/releases/download/4.2.0.4/WhoIsTalking.dll --output WhoIsTalking.dll
   echo Mod added!
) else (
   echo Error, that's not an option. Please restart the app and enter something that exists
)
pause