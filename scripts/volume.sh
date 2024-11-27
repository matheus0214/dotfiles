#!/usr/bin/env bash
amixer -D pulse get Master | grep -E -o "[0-9]+%"
