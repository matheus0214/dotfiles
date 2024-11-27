#!/bin/bash

pactl set-default-source alsa_input.pci-0000_00_1f.3-platform-skl_hda_dsp_generic.3.HiFi__hw_sofhdadsp_6__source

# How to get a default input
# Test: arecord | aplay
# Verify which is running: pactl list sources short
