# Full Network Reset Tool

**Version:** 2.2  
**Author:** Nicássio Guimarães (Nick Dwtyay)  
**License:** MIT 2.0  

## Description

This is a complete network reset tool for Windows, written in a batch script.  
It executes a series of commands to release and renew IP configurations, flush DNS, reset Winsock, and network stacks (IPv4, IPv6, TCP).  
Useful for troubleshooting internet connectivity issues, especially after misconfigurations or network driver changes.

## Features

- Verifies administrator privileges  
- Logs full network information before resetting  
- Executes:
  - `ipconfig /release`
  - `ipconfig /flushdns`
  - `ipconfig /renew`
  - `ipconfig /registerdns`
  - `netsh int ipv4 reset`
  - `netsh int ipv6 reset`
  - `netsh int tcp reset`
  - `netsh winsock reset`
- Generates a log file: `reset_de_rede.log`  
- Recommends system reboot after execution  

## How to Use

1. **Download** the script file (`reset_network.bat`)  
2. **Right-click** on the file and select **"Run as administrator"**  
3. Follow the on-screen instructions  
4. After the process is complete, **restart your PC**

> **Important:** You must run this script as an administrator for it to work correctly.



