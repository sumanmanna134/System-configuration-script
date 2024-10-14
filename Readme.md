# Installation Script for Development Tools

This project provides a Bash script that automates the installation of several essential development tools on Linux-based systems. The script installs the following:

- **Node.js (LTS version)**
- **Git**
- **IntelliJ IDEA Community Edition**
- **Visual Studio Code**
- **OpenJDK 17**

## Prerequisites

Before running the script, ensure that your system has the following:

- **Bash shell**: The script is designed to run in a Bash environment.
- **Root access**: You will need `sudo` or root privileges to install packages.

## Supported Linux Distributions

The script supports most popular Linux distributions, including:

- Ubuntu and other **Debian-based distributions** (using `apt`)
- Fedora and other **Red Hat-based distributions** (using `dnf`)
- CentOS and other **RHEL-based distributions** (using `yum`)

For IntelliJ IDEA and Visual Studio Code, the script uses **Snap**. If Snap is not installed on your system, the script will attempt to install it.

## Download the Script

First, clone this repository or download the script directly:

```bash
git clone https://github.com/yourusername/dev-tools-installer.git
cd dev-tools-installer
```

## How to Use for Linux

### 2. Make the Script Executable

```
chmod +x install.sh
```

Run the Bash Script
Run the script with `sudo`:

```
sudo ./install.sh
```

## How to Use for Windows

### 1. Set Execution Policy (if needed)

Before running the script, you might need to change the PowerShell execution policy:

Check the current policy:

```
Get-ExecutionPolicy

```

Set the execution policy to allow running scripts:

```
Set-ExecutionPolicy RemoteSigned

```

You may need to confirm the change by typing `Y`.

### 2. Run the PowerShell Script

Navigate to the folder containing the script, and then run it:

```
.\install.ps1
```

## Verify Installation

Check that the tools have been installed:

### Nodejs

```
node -v

```

### Git

```
git --version

```

### IntelliJ IDEA: Launch from your application menu or using:

```
intellij-idea-community

```

### OpenJDK 17

```
java -version

```
