#!/bin/bash
# audio-toggle.sh — toggle between two audio output devices

SPEAKER_NAME="pci-0000_2a_00.4.analog-stereo" # Starship/Matisse HD Audio Controller Analog Stereo
HEADSET_NAME="PreSonus_Studio_24c" # Studio 24c Analog Stereo

HEADSET_ID=$(pactl list short sinks | grep "$HEADSET_NAME" | awk '{print $1}')
SPEAKER_ID=$(pactl list short sinks | grep "$SPEAKER_NAME" | awk '{print $1}')

if [ -z "$SPEAKER_ID" ] || [ -z "$HEADSET_ID" ]; then
    notify-send "Audio Toggle" "Nie znaleziono jednego z urządzeń audio!" 2>/dev/null
    exit 1
fi

# Get current default sink ID (line marked with *)
current=$(wpctl status | awk '
    /Sinks:/ { in_sinks=1; next }
    /Sources:/ { in_sinks=0 }
    in_sinks && /\*/ {
        match($0, /[0-9]+/)
        if (RSTART) { print substr($0, RSTART, RLENGTH); exit }
    }')

if [ "$current" = "$SPEAKER_ID" ]; then
    wpctl set-default "$HEADSET_ID"
else
    wpctl set-default "$SPEAKER_ID"
fi
