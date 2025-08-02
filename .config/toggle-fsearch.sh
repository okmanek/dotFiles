#!/usr/bin/env bash

# Try to find a visible FSearch window by WM_CLASS or window name
WIN_ID=$(xdotool search --onlyvisible --class Fsearch | head -n 1)

# If not found by class, try by window name
if [ -z "$WIN_ID" ]; then
  WIN_ID=$(xdotool search --onlyvisible --name "FSearch" | head -n 1)
fi

if [ -n "$WIN_ID" ]; then
  # Close existing window
  xdotool windowclose "$WIN_ID"
else
  # Launch FSearch in background
  fsearch &
fi
