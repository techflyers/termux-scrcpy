#!/bin/bash

# Termux Setup
echo "This script will set up a scrcpy session on your Termux device, allowing you to mirror and control your Android device from your Termux environment. Before running the script, please follow these steps:"
echo ""
echo "# Prerequisites"
echo "1. Check your device dimensions (Optional): Visit whatismyscreenresolution.org on your device's browser and note down \"Device Resolution\" First part is width, second height."
echo "2. Install Termux-X11: (*) Download and install the Termux-X11 apk. https://tinyurl.com/termux-x11v1-app"
echo ""

# Create the bin directory if it doesn't exist
mkdir -p ~/bin

# Install dependencies
pkg update
pkg install -y termux-x11-nightly xdotool xorg-xsetroot scrcpy tsu nmap net-tools

# Download the main script from xyz.com/main.txt
curl -o ~/bin/termux-scrcpy https://raw.githubusercontent.com/techflyers/termux-scrcpy/main/termux-scrcpy

# Make the main script executable
chmod +x ~/bin/termux-scrcpy

echo PATH=$HOME/bin:$PATH >> /data/data/com.termux/files/usr/etc/bash.bashrc

# Print the installation status
echo "Dependencies and main script installed successfully."
echo "You can now run the main script with the following command:"
echo "$ termux-scrcpy"
echo ""
echo -e "Close and relaunch termux to complete changes.\nUsage:\n     $ termux-scrcpy [OPTIONS] (Refer: scrcpy --help)"
