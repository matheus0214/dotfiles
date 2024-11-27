#!/bin/bash

SOURCE="alsa_input.pci-0000_00_1f.3-platform-skl_hda_dsp_generic.3.HiFi__hw_sofhdadsp_6__source"

VOLUME_STEP="${1:-5%}"

pactl set-source-volume "$SOURCE" "+$VOLUME_STEP"

CURRENT_VOLUME=$(pactl list sources | grep -A 10 "$SOURCE" | grep "Volume" | head -n 1)
echo "Current Volume: $CURRENT_VOLUME"
