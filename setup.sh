#!/bin/bash

# Define colors for clarity
GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}🚀 Starting Initial Server Setup...${NC}"

# 1. Change Root Password
echo -e "${GREEN}🔑 Step 1: Changing Root Password...${NC}"
echo "You will be asked to enter the new password for the 'root' user:"
sudo passwd root

# 2. Update & Upgrade
echo -e "${GREEN}🔄 Step 2: Updating System...${NC}"
sudo apt update && sudo apt upgrade -y

# 3. Install Essential Tools
echo -e "${GREEN}📦 Step 3: Installing Tools (nano, curl, git, htop, etc)...${NC}"
sudo apt install -y nano wget curl git unzip htop net-tools ufw

echo -e "${GREEN}✅ Setup Complete! Your server is ready.${NC}"
