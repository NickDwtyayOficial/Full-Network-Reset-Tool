@echo off
title Full Network Reset Nicassio Guimaraes v2.2 MIT License 2.0, Nick Dwtyay, Ltd.
cls

:: Check if running as administrator
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Please run this script as Administrator!
    pause
    exit /b
)

echo ########################################################
echo #               FULL NETWORK RESET                    #
echo #                                                    #
echo # This script will run a series of commands to       #
echo # reset your computer's network settings             #
echo ########################################################
echo.
echo Execution date: %date% %time%
echo.

echo Saving network information to reset_network.log...
ipconfig /all > reset_network.log

echo Running ipconfig /release...
ipconfig /release >> reset_network.log
timeout /t 5 /nobreak >nul

echo Running ipconfig /flushdns...
ipconfig /flushdns >> reset_network.log
timeout /t 5 /nobreak >nul

echo Running ipconfig /renew...
ipconfig /renew >> reset_network.log
timeout /t 10 /nobreak >nul

echo Running ipconfig /registerdns...
ipconfig /registerdns >> reset_network.log
timeout /t 5 /nobreak >nul

echo Running netsh int ipv4 reset...
netsh int ipv4 reset >> reset_network.log
timeout /t 5 /nobreak >nul

echo Running netsh int ipv6 reset...
netsh int ipv6 reset >> reset_network.log
timeout /t 5 /nobreak >nul

echo Running netsh int tcp reset...
netsh int tcp reset >> reset_network.log
timeout /t 5 /nobreak >nul

echo Running netsh winsock reset...
netsh winsock reset >> reset_network.log
timeout /t 5 /nobreak >nul

echo.
echo ########################################################
echo All operations were completed successfully!
echo.
echo A file named reset_network.log was created with the details.
echo.
echo RECOMMENDATION: Restart your computer so all changes
echo take full effect.
echo ########################################################
pause
