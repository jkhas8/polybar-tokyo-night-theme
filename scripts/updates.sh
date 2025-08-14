#!/bin/bash

# Check for updates based on distribution
if command -v pacman &> /dev/null; then
    # Arch Linux
    updates=$(checkupdates 2>/dev/null | wc -l)
elif command -v apt &> /dev/null; then
    # Debian/Ubuntu
    updates=$(apt list --upgradable 2>/dev/null | grep -c upgradable)
elif command -v dnf &> /dev/null; then
    # Fedora
    updates=$(dnf check-update --quiet | wc -l)
else
    updates=0
fi

if [ "$updates" -gt 0 ]; then
    echo "$updates"
else
    echo "0"
fi