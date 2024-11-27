#!/bin/bash

# Define the input source (your specific device)
SOURCE="alsa_input.pci-0000_00_1f.3-platform-skl_hda_dsp_generic.3.HiFi__hw_sofhdadsp_6__source"

# Get the current volume of the input source
VOLUME=$(pactl list sources | grep -A 10 "$SOURCE" | grep "Volume" | head -n 1 | awk '{print $5}')

# If volume is not found, display an error
if [[ -z "$VOLUME" ]]; then
    echo "Error: No volume found"
    exit 1
fi

# Output the volume
echo "$VOLUME"
