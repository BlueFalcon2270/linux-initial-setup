#!/bin/bash

# 1. Check if the script is running as root
if [ "$EUID" -ne 0 ]; then
  echo "Error: Please run as root (use sudo)."
  exit 1
fi

# 2. Main Menu Loop
while true; do
    clear
    echo "====================================================="
    echo "          SERVER SETUP MENU"
    echo "====================================================="
    echo "1. Change User Password"
    echo "2. Update and Upgrade Server"
    echo "3. Install Common Utilities"
    echo "4. Exit"
    echo "====================================================="
    read -p "Please select an option [1-4]: " choice

    case $choice in
        1)
            echo ""
            echo "--- Change Password ---"
            read -p "Enter username to change password (leave empty for current root): " target_user
            if [ -z "$target_user" ]; then
                passwd
            else
                passwd "$target_user"
            fi
            echo ""
            read -n 1 -s -r -p "Press any key to return to menu..."
            ;;
        2)
            echo ""
            echo "--- Updating and Upgrading System ---"
            # This assumes a Debian/Ubuntu based system (apt)
            apt update && apt upgrade -y
            echo ""
            echo "Server update complete."
            echo ""
            read -n 1 -s -r -p "Press any key to return to menu..."
            ;;
        3)
            echo ""
            echo "--- Installing Utilities ---"
            # List of utilities to install
            APPS="curl wget git htop unzip zip nano net-tools tmux screen"
            
            echo "Installing: $APPS"
            apt install -y $APPS
            
            echo ""
            echo "Utilities installed successfully."
            echo ""
            read -n 1 -s -r -p "Press any key to return to menu..."
            ;;
        4)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid option. Please try again."
            sleep 1
            ;;
    esac
done
