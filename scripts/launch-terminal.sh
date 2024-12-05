#!/bin/bash

if command -v /home/matheus/.local/kitty.app/bin/kitty >/dev/null 2>&1; then
    /home/matheus/.local/kitty.app/bin/kitty
else
    notify-send "Kitty not found, falling back to i3-sensible-terminal"
    i3-sensible-terminal
fi
