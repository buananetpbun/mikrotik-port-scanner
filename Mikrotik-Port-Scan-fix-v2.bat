@echo off
title ROUTEROS PORT TESTER BY BNT
:Loop 
echo.
echo =================================
echo -= ROUTEROS PORT TESTER BY BNT =-
echo =================================
echo.
set /p ip="Enter IP Address: "
echo.
echo PORT INFO:
echo - 8291 / Winbox
echo - 80   / WWW Webfig http
echo - 443  / WWW-SSL Webfig https
echo - 8728 / API
echo - 8729 / API-SSL
echo - 21   / FTP
echo - 22   / SSH
echo - 23   / Telnet
echo - 3128 / Open proxy
echo - 8080 / Open proxy
echo - 53   / DNS
echo - 2000 / Btest Server
echo.
echo Try for Scaning Port Please Wait...
echo.
PortCheck %ip% 8291,80,443,8728,8729,21,22,23,3128,8080,53,2000
echo.
IF %ERRORLEVEL%==1 echo - WARNING!! Open ports found, danger from attack!
echo - Please change your default port to another port
echo. 
echo Scan Port Complete..
echo.
pause
cls
goto loop
