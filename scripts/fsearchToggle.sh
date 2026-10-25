#!/bin/bash

# fsearchToggle.sh — toggle fsearch window on/off
# cp /home/$USER/.local/bin/fsearchToggle.sh

# Check if FSearch is running
if pgrep -x "fsearch" > /dev/null; then
    # Try to close the window gracefully
    wmctrl -c "FSearch" 2>/dev/null || pkill fsearch
else
    # Launch FSearch in background
    nohup fsearch >/dev/null 2>&1 &
fi
