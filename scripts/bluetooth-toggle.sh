#!/bin/bash

# Toggle bluetooth power
powered=$(bluetoothctl show | grep "Powered: yes")
if [ -n "$powered" ]; then
    bluetoothctl power off
else
    bluetoothctl power on
fi