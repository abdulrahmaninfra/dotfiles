#!/bin/bash

# Terminate already running bar instances
pkill waybar

# Wait a tiny bit for the process to fully close
sleep 0.2

# Launch waybar in the background and silence output
waybar > /dev/null 2>&1 &
