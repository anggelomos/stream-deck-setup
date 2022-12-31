#!/bin/bash

xdotool getwindowfocus getwindowname | grep "Slack$"

if [ $? -eq 0  ]; then
  xdotool key 'ctrl+shift+c'
else
  xdotool key 'ctrl+e'
fi

