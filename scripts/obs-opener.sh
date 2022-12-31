#!/bin/bash

ps aux | grep "obs-studio" | grep -v "color" | grep -v "grep"

if [ $? -eq 0  ]; then
  xdotool search --onlyvisible --class 'obs' windowactivate
else
  obs-studio
fi

