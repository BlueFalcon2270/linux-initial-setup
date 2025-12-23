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

📋 Script Features
Here is exactly what the script does, in order:

1️⃣ First: Change Root Password
The script immediately runs sudo passwd root. This forces you to set a new, secure password for the root user to ensure your server is safe from the start.

2️⃣ Second: Update & Upgrade
It automatically refreshes the package lists and installs the latest security patches and software updates (apt update && apt upgrade -y).

3️⃣ Third: Install Essential Tools
It installs a standard kit of utilities so you have everything you need ready to go:

nano: A simple text editor.

curl & wget: Tools to download files from the internet.

git: Required to clone repositories.

unzip: To extract zip archives.

htop: A visual task manager to monitor your server's RAM and CPU.

net-tools: Networking commands (like ifconfig).

ufw: The default firewall (installed but left for you to configure).
