# Python Virtual Environment Creator

Welcome to the Python Virtual Environment Creator! This script simplifies the process of creating and activating Python virtual environments on Linux and macOS.

## Overview

In Python development, a virtual environment is a self-contained directory that encapsulates a specific Python interpreter and its associated libraries. The primary purpose of virtual environments is to create isolated spaces for projects, enabling developers to manage dependencies and avoid conflicts between different projects or the global Python environment.

### Why Use Virtual Environments?

1. **Isolation:** Virtual environments provide a dedicated workspace for each project, isolating its dependencies from other projects and the system-wide Python installation.

2. **Dependency Management:** By creating a virtual environment for each project, developers can control and customize the libraries and versions required, ensuring consistent and reproducible environments.

3. **Clean Development:** Virtual environments offer a clean slate for development, preventing unintended interactions between project dependencies and global Python packages.

## Usage

### Linux and macOS

```zsh
# Navigate to the Scripts/Linux-Mac directory
cd Scripts/Linux-Mac

# Make the script executable
chmod +x create_venv.sh

# Run the script
./create_venv.sh
```


### Windows (PowerShell)

```powershell
# Navigate to the Scripts/Windows directory
cd Scripts/Windows

# Run the script
.\create_venv.ps1
```


