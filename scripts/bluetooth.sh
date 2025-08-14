#!/bin/bash

# Check bluetooth status
if systemctl is-active --quiet bluetooth; then
    # Check if bluetooth is powered on
    powered=$(bluetoothctl show | grep "Powered: yes")
    if [ -n "$powered" ]; then
        # Check for connected devices
        devices=$(bluetoothctl devices Connected | wc -l)
        if [ "$devices" -gt 0 ]; then
            echo "Connected"
        else
            echo "On"
        fi
    else
        echo "Off"
    fi
else
    echo "Disabled"
fi