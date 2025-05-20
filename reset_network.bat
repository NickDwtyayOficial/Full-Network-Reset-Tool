@echo off
title Full Network Reset Tool by Nicassio Guimaraes v2.2 - MIT License
cls

:: Check for admin privileges
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Please run this script as Administrator!
    pause
    exit /b
)

echo ########################################################
echo #               COMPLETE NETWORK RESET TOOL           #
echo #                                                     #
echo # This script will execute a series of commands to    #
echo # reset the network configuration on your computer.   #
echo ########################################################
echo.
echo Execution date: %date% %time%
echo.

echo Saving network information to reset_de_rede.log...
ipconfig /all > reset_de_rede.log

echo Running ipconfig /release...
ipconfig /release >> reset_de_rede.log
timeout /t 5 /nobreak >nul

echo Running ipconfig /flushdns...
ipconfig /flushdns >> reset_de_rede.log
timeout /t 5 /nobreak >nul

echo Running ipconfig /renew...
ipconfig /renew >> reset_de_rede.log
timeout /t 10 /nobreak >nul

echo Running ipconfig /registerdns...
ipconfig /registerdns >> reset_de_rede.log
timeout /t 5 /nobreak >nul

echo Running netsh int ipv4 reset...
netsh int ipv4 reset >> reset_de_rede.log
timeout /t 5 /nobreak >nul

echo Running netsh int ipv6 reset...
netsh int ipv6 reset >> reset_de_rede.log
timeout /t 5 /nobreak >nul

echo Running netsh int tcp reset...
netsh int tcp reset >> reset_de_rede.log
timeout /t 5 /nobreak >nul

echo Running netsh winsock reset...
netsh winsock reset >> reset_de_rede.log
timeout /t 5 /nobreak >nul

echo.
echo ########################################################
echo All operations completed successfully!
echo.
echo A log file (reset_de_rede.log) has been created with details.
echo.
echo RECOMMENDATION: Restart your computer for all changes to take full effect.
echo ########################################################
pause
