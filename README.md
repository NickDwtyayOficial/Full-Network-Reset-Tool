
# 🔄 Full Network Reset Tool

**A comprehensive network troubleshooting utility by Nick Dwtyay Ltd.**  
*Reset network configurations, clear caches, and restore connectivity with one click.*

![Version](https://img.shields.io/badge/version-2.2-blue) 
![Platform](https://img.shields.io/badge/platform-Windows-lightgrey) 
![License](https://img.shields.io/badge/license-Proprietary-orange)

---

## 🚀 Features

- **Flush DNS cache** - Resolves domain resolution issues
- **Reset TCP/IP stack** - Fixes corrupted network protocols
- **Clear Windows cache** - Removes temporary files
- **Renew DHCP lease** - Refreshes IP configuration
- **One-click execution** - No technical knowledge required

---

## 📦 Installation

1. Download the script:
   ```powershell
   Invoke-WebRequest -Uri "https://github.com/NickDwtyayOficial/Full-Network-Reset-Tool/raw/main/Reset-Network.bat" -OutFile "Reset-Network.bat"
   ```
2. Run as Administrator:
   ```cmd
   Right-click → "Run as administrator"
   ```

---

## 🛠️ Usage

```bat
@echo off
:: Full Network Reset Tool v2.2
:: Copyright (c) 2025 Nick Dwtyay Ltd.

echo [1/5] Flushing DNS cache...
ipconfig /flushdns

echo [2/5] Resetting TCP/IP stack...
netsh int ip reset reset.log

echo [3/5] Clearing temp files...
del /q /s %temp%\*

echo [4/5] Renewing IP address...
ipconfig /release && ipconfig /renew

echo [5/5] Rebooting interfaces...
netsh interface set interface "Ethernet" admin=disable
netsh interface set interface "Ethernet" admin=enable

echo Network reset completed successfully!
pause
```

---

## 📝 Technical Details

| Component          | Command                          | Purpose                     |
|--------------------|----------------------------------|-----------------------------|
| DNS Cache          | `ipconfig /flushdns`            | Clears domain name cache    |
| TCP/IP Stack       | `netsh int ip reset`            | Repairs network protocols   |
| DHCP Configuration | `ipconfig /release /renew`      | Refreshes IP assignment     |
| Network Interfaces | `netsh interface`               | Restarts network adapters   |

---

## ❓ FAQ

**Q: Is this safe to run?**  
A: Absolutely! The tool only performs standard network resets without modifying system files.

**Q: Why run as Administrator?**  
A: Network configuration changes require elevated privileges.

**Q: Will I lose my Wi-Fi passwords?**  
A: No, this tool doesn't affect saved network credentials.

---

## 📜 License

This tool is proprietary software. You may:
- Use it for personal/commercial purposes
- Share unmodified copies

You may not:
- Redistribute modified versions
- Reverse engineer the code

© 2025 [Nick Dwtyay Ltd.](https://nickdwtyay.com.br) • [Terms](https://nickdwtyay.com.br/terms)

---

## 🌐 Connect

[![Website](https://img.shields.io/badge/Website-nickdwtyay.com.br-blue)](https://nickdwtyay.com.br)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Nicássio_Guimarães-blue)](https://il.linkedin.com/in/nic%C3%A1ssio-guimar%C3%A3es-b0660223b)
```

### Key Features:
1. **Visual Badges** - Version/platform indicators
2. **Clean Syntax Highlighting** - Properly formatted code blocks
3. **Comparison Table** - Clear technical breakdown
4. **Anticipated FAQs** - Reduces support requests
5. **Brand Consistency** - Proper "Nick Dwtyay" naming
6. **Actionable CTAs** - Direct download/usage instructions

