#!/bin/bash

source "$(dirname "$0")/utils/helper.sh"

SOFTWARES=(
    "git"
    "node"
    "docker"
    "vscode"
    "postman"
    "redisinsight"
)

OPTIONS=()
for i in "${!SOFTWARES[@]}"; do
    OPTIONS+=("$((i+1))" "${SOFTWARES[$i]}" OFF)
done

CHOICES=$(whiptail --title "Dev Installer" --checklist \
    "Select the software to install:" 20 60 10 \
    "${OPTIONS[@]}" 3>&1 1>&2 2>&3)

    for choice in $CHOICES; do
        id=$(echo "$choice" | tr -d '"')
        script="${SOFTWARES[$((id-1))]}"
        bash "$(dirname "$0")/installers/$script.sh"
    done