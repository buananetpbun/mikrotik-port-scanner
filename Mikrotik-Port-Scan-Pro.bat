@echo off
title MIKROTIK PORT SCANNER BY BUANANET SECURE 
color 1f  
:Loop 
echo.
echo ===============================================
echo -= MIKROTIK PORT SCANNER BY BUANANET SECURE =-
echo ===============================================
set /p ip="TARGET IP ADDRESS: "
echo.
echo SCANNING PLEASE WAIT...
echo.
PortCheck %ip% 8291,80,443,8728,8729,21,22,23,3128,8080,53
echo.
IF %ERRORLEVEL%==1 echo Ada Port Terbuka, Bahaya Dari Serangan.
echo. 
echo ===============================================
echo SCAN COMPLETE..
echo ===============================================
echo. 
pause
cls
goto loop




