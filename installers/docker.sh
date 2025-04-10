#!/bin/bash
# This script installs Docker and Docker Compose on Ubuntu.
# It checks if Docker is already installed, and if not, it installs Docker and Docker Compose.
# It also adds the current user to the Docker group to allow running Docker commands without sudo.
# It is recommended to run this script with sudo privileges.
# Usage: ./docker.sh
# Check if the script is run with sudo privileges
if [ "$EUID" -ne 0 ]; then
    echo "Please run this script with sudo privileges."
    exit 1
fi
# Check if Docker is already installed  