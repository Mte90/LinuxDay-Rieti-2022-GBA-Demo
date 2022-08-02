#!/usr/bin/env bash

convert tiles/lug2.bmp -type truecolor tiles/lug2.bmp
output=$(./build.lua 2>&1)
if [[ -z "$output" ]]; then
    /usr/games/mgba-qt ./LinuxDayRieti2022.gba
else
    echo $output
fi
