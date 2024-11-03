<!-- # Installation Script for Development Tools

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

``` -->

# Offlix

Offlix is a command-line tool designed to simplify the deployment and management of common services using Docker Compose. With Offlix, you can easily install, uninstall, and retrieve environment variables for services like MySQL, MongoDB, Kafka, Maildev, and PostgreSQL.

## Table of Contents

- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Commands](#commands)
- [Environment Variables](#environment-variables)
- [Contributing](#contributing)
- [License](#license)

## Features

- **Easy Installation**: Quickly deploy common services with predefined Docker Compose configurations.
- **Service Management**: Start, stop, and uninstall services with simple commands.
- **Environment Variable Retrieval**: Automatically fetch and display environment variables after service installation.
- **Custom Configurations**: Support for custom Docker Compose files for advanced users.

## Installation

To install Offlix, use pip:

```bash
pip install offlix

```

## Usage

Once Offlix is installed, you can use it from the command line. Here’s how to get started:

```bash
offlix <command> <service_name>
```

## Commands

### Install a Service:

```bash
offlix install mysql
```

### Uninstall a Service:

```bash
offlix uninstall mysql
```

### Stop a Service:

```bash
offlix stop mysql
```

### Example

### To install MySQL and retrieve its environment variables:

```bash
offlix install mysql
```

### After installation, to get the environment variables:

```python
from offlix import get_service_env
env_vars = get_service_env('mysql')
print(env_vars)
```

### Environment Variables

After installing a service with Docker, you can retrieve its environment variables (like username, password, etc.) using the following command:

```python
from offlix import get_service_env

# Retrieve environment variables for MySQL

mysql_env = get_service_env('mysql')
print(mysql_env)
```

This will display relevant configuration settings required for connecting to the service.

## Contributing

Contributions are welcome! If you have suggestions for improvements or want to report bugs, please open an issue or create a pull request.

Fork the repository.

Create a new branch (git checkout -b feature-branch).
Make your changes and commit them (git commit -m 'Add new feature').

Push to the branch (git push origin feature-branch).
Open a pull request.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.

This project is licensed under the terms of the [MIT License](LICENSE).
