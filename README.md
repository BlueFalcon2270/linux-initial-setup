# 🛠️ Linux Initial Server Setup

![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![Bash](https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white)

A simple, automated script to prepare a fresh Linux server for production.
Instead of running multiple commands manually, this script handles the essential configuration in one click.
<br><br>

## 🚀 Quick Install
Copy and run this single command:
```bash
wget -O setup.sh https://raw.githubusercontent.com/BlueFalcon2270/linux-initial-setup/main/setup.sh && sudo bash setup.sh
```
<br><br>

## ✅ Supported Systems

| Distribution | Compatibility |
| :--- | :---: |
| **Ubuntu** (All Versions) | ✅ |
| **Debian** (All Versions) | ✅ |
| **Kali Linux** | ✅ |
| **Linux Mint** | ✅ |

<br><br>

## 📋 Script Features – Executed in order:
### 1️⃣ Change Root Password
The script first runs a command that forces you to set a new, secure password for the root user. This helps protect the system from the very beginning.
<br><br>

### 2️⃣ Update & Upgrade the System
It refreshes the package list and installs the latest available security patches and software updates.
<br><br>

### 3️⃣ Install Essential Tools
The script installs a set of commonly used utilities to make the system ready for daily use:

- **nano** – Simple terminal text editor  
- **curl** & **wget** – Tools for downloading files from the internet  
- **git** – Required for cloning and managing repositories  
- **unzip** – Extract ZIP archives  
- **htop** – Interactive system monitor (CPU & RAM usage)  
- **net-tools** – Networking utilities  
- **ufw** – Firewall (installed but left unconfigured)
