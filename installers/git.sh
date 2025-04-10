#!/bin/bash

# This script installs Git on Ubuntu.
# First, it checks if Git is already installed.
if commnand -v git >/dev/null 2>&1;  then
    GIT_VERSION=$(git --version)
    echo "Git is already installed. Version: $GIT_VERSION"
    exit 0
fi

# If Git is not installed, it updates the package list and installs Git.
echo "Git is not installed. Installing Git..."
sudo apt update && sudo apt install -y git

# After installation, it verifies the installation by checking the Git version.
if command -v git >/dev/null 2>&1; then
    GIT_VERSION=$(git --version)
    echo "Git installed successfully. Version: $GIT_VERSION"
else
    echo "Git installation failed."
    exit 1
fi
