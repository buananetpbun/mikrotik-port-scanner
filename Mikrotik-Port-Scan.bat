@echo off
title MIKROTIK PORT SCANNER BY BUANANET SECURE 
color 1f  
:Loop 
echo.
echo ===============================================
echo -= MIKROTIK PORT SCANNER BY BUANANET SECURE =-
echo ===============================================
set /p ip="TARGET IP ADRRESS: "
echo.
echo SCANNING PLEASE WAIT...
echo.
echo SCAN FOR WINBOX SERVICE PORT 8291
PortCheck %ip% 8291
CALL:INFO
echo ===============================================
echo SCAN FOR WEBFIG HTTP SERVICE PORT 80
PortCheck %ip% 80
CALL:INFO
echo ===============================================
echo SCAN FOR WEBFIG HTTPS SERVICE PORT 443
PortCheck %ip% 443 
CALL:INFO
echo ===============================================
echo SCAN FOR API SERVICE PORT 8728
PortCheck %ip% 8728 
CALL:INFO
echo ===============================================
echo SCAN FOR API-SSL SERVICE PORT 8729
PortCheck %ip% 8729 
CALL:INFO
echo ===============================================
echo SCAN FOR FTP SERVICE PORT 21
PortCheck %ip% 21
CALL:INFO
echo ===============================================
echo SCAN FOR SSH SERVICE PORT 22
PortCheck %ip% 22
CALL:INFO
echo ===============================================
echo SCAN FOR TELNET SERVICE PORT 23
PortCheck %ip% 23 
CALL:INFO
echo ===============================================
echo SCAN FOR OPEN PROXY PORT 3128, 8080
PortCheck %ip% 3128,8080 
CALL:INFO
echo ===============================================
echo SCAN FOR OPEN DNS PORT 53
PortCheck %ip% 53
CALL:INFO
echo. 
echo ===============================================
echo SCAN COMPLETE..
echo ===============================================
echo. 
pause
cls
goto loop
:INFO 
IF %ERRORLEVEL%==0 echo Port Tertutup, Aman Dari Serangan.
IF %ERRORLEVEL%==1 echo Port Terbuka, Bahaya Dari Serangan.



