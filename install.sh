#!/bin/bash

# Update package list
sudo apt update || sudo yum update -y || sudo dnf update -y

# Install Node.js (LTS version) via NodeSource
echo "Installing Node.js..."
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt install -y nodejs || sudo dnf install -y nodejs || sudo yum install -y nodejs

# Install Git
echo "Installing Git..."
sudo apt install -y git || sudo dnf install -y git || sudo yum install -y git

# Install IntelliJ IDEA Community Edition via Snap
echo "Installing IntelliJ IDEA Community Edition..."
if ! command -v snap &> /dev/null; then
    echo "Snap is not installed. Installing Snap..."
    sudo apt install -y snapd || sudo yum install -y epel-release && sudo yum install -y snapd || sudo dnf install -y snapd
    sudo ln -s /var/lib/snapd/snap /snap
    sudo systemctl enable --now snapd.socket
fi
sudo snap install intellij-idea-community --classic

# Install Visual Studio Code via Snap
echo "Installing Visual Studio Code..."
sudo snap install code --classic

# Install OpenJDK 17
echo "Installing OpenJDK 17..."
sudo apt install -y openjdk-17-jdk || sudo dnf install -y java-17-openjdk-devel || sudo yum install -y java-17-openjdk-devel

echo "All installations completed successfully!"
