# 🛠️ Linux Initial Server Setup

![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![Bash](https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white)

A simple, automated script to prepare a fresh Linux server for production.
Instead of running multiple commands manually, this script handles the essential configuration in one click.
<br><br>

### 🚀 Quick Install
```bash
wget -O setup.sh [https://raw.githubusercontent.com/BlueFalcon2270/linux-initial-setup/main/setup.sh](https://raw.githubusercontent.com/BlueFalcon2270/linux-initial-setup/main/setup.sh) && sudo bash setup.sh
```
<br><br>

### ✅ Supported Systems

| Distribution | Compatibility |
| :--- | :---: |
| **Ubuntu** (All Versions) | ✅ |
| **Debian** (All Versions) | ✅ |
| **Kali Linux** | ✅ |
| **Linux Mint** | ✅ |

---



Copy and run this single command:

## 📋 Script Features

This script performs the following actions **in order**:

---

### 1️⃣ Set Root Password
Prompts you to set a new password for the `root` user by running:

`sudo passwd root`

This helps secure the system immediately after setup.

---

### 2️⃣ Update System Packages
Updates the package list and installs the latest security and software updates:

`apt update && apt upgrade -y`

---

### 3️⃣ Install Essential Tools
Installs commonly used utilities required for daily server management:

- **nano** – Simple terminal text editor  
- **curl** & **wget** – Download tools  
- **git** – Clone and manage repositories  
- **unzip** – Extract ZIP archives  
- **htop** – Interactive system monitor (CPU & RAM)  
- **net-tools** – Networking utilities (e.g. `ifconfig`)  
- **ufw** – Firewall (installed but not configured)
