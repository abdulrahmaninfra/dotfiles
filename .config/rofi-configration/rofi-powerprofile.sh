#!/bin/bash

# 1. Get current active profile
current=$(powerprofilesctl get)

# 2. Define options
options="Performance\nBalanced\nPower-Saver"

# 3. Use the -mesg flag to show the status in Rofi
chosen=$(echo -e "$options" | rofi -dmenu -i \
    -p "Power Profile" \
    -mesg "Current Active: <b>$current</b>" \
    -config ~/.config/rofi/config.rasi)

# 4. Execute change
case $chosen in
    Performance) powerprofilesctl set performance ;;
    Balanced)    powerprofilesctl set balanced ;;
    Power-Saver) powerprofilesctl set power-saver ;;
esac
