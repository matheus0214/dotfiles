#!/bin/env bash

choice=$(printf "  Lock\n󰍃  Logout\n󰒲  Suspend\n  Reboot\n  Shutdown" | rofi -dmenu)

case "$choice" in
  "  Lock") sh $HOME/.config/bin/screen-lock.sh ;;
  "󰍃  Logout") pkill -KILL -u "$USER" ;;
  "󰒲  Suspend") sh $HOME/.config/bin/screen-lock.sh --suspend ;;
  "  Reboot") systemctl reboot ;;
  "  Shutdown") systemctl poweroff ;;
esac
