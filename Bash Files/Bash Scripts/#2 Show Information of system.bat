#Developer: Kristian Jay Tadeo 
#Date Developed: 8/3/22
#MIT License


@echo off
:cd "Location"
nslookup myip.opendns.com resolver1.opendns.com>ComputerSysteminfo.log
ver>>ComputerSysteminfo.log
ECHO.>>ComputerSysteminfo.log
ECHO Username:%username%>>ComputerSysteminfo.log
ECHO.>>ComputerSysteminfo.log
ECHO Time: %time%>>ComputerSysteminfo.log
ECHO.>>ComputerSysteminfo.log
ECHO Date: %date%>>ComputerSysteminfo.log
ECHO.>>ComputerSysteminfo.log
netsh wlan show profiles>>ComputerSysteminfo.log
ECHO.>>ComputerSysteminfo.log
ipconfig>>ComputerSysteminfo.log
ECHO.>>ComputerSysteminfo.log
ECHO Additional Information:>>ComputerSysteminfo.log
ipconfig | find /i "IPv4">>ComputerSysteminfo.log
wmic diskdrive get size>>ComputerSysteminfo.log
wmic cpu get name>>ComputerSysteminfo.log
ECHO.>>ComputerSysteminfo.log
ECHO.>>ComputerSysteminfo.log
ECHO.>>ComputerSysteminfo.log
systeminfo>>ComputerSysteminfo.log

ren -=- Opens Port 1122 -=-
:ports
cls & color 0a
netsh advfirewall firewall add rule name="Port 1122 TCP" dir=in action=allow protocol=TCP localport=%1
netsh advfirewall firewall add rule name="Port 1122 UDP" dir=in action=allow protocol=UDP localport=%1
