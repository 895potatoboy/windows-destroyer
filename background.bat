@echo off
:: --- CONFIGURATION ---
set "ImageUrl=https://staticcookist.akamaized.net/wp-content/uploads/sites/22/2026/07/brunost-brown-cheese-norvegian.jpg"
set "SavePath=%USERPROFILE%\Pictures\wallpaper.jpg"

:: --- STEP 1: DOWNLOAD THE IMAGE ---
echo Downloading image...
powershell -Command "Invoke-WebRequest -Uri '%ImageUrl%' -OutFile '%SavePath%'"

:: --- STEP 2: UPDATE THE REGISTRY ---
echo Updating registry...
reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%SavePath%" /f

:: --- STEP 3: FORCE REFRESH SYSTEM PARAMETERS ---
echo Applying wallpaper immediately...
powershell -Command "Add-Type -TypeDefinition 'using System; using System.Runtime.InteropServices; public class Wallpaper { [DllImport(\"user32.dll\", CharSet=CharSet.Auto)] public static extern int SystemParametersInfo(int uAction, int uParam, string lvParam, int fuWinIni); }'; [Wallpaper]::SystemParametersInfo(20, 0, '%SavePath%', 3)"

echo Done!
exit
