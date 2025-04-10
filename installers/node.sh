#!/bin/bash

# This script installs Node.js on Ubuntu.
# It checks if Node.js is already installed, and if not, it installs Node.js.
if command -v node >/dev/null 2>&1; then
    NODE_VERSION=$(node --version)
    echo "Node.js is already installed. Version: $NODE_VERSION"
    exit 0
else
    echo "Node.js is not installed. Installing Node.js..."

# Add NodeSource repository for Node.js*
    curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
    sudo apt-get install -y nodejs
fi