#!/bin/bash

open -a 'Mission Control'
osascript -e 'delay 0.5' \
          -e 'tell application "System Events" to click (every button whose
                value of attribute "AXDescription" is "add desktop") of group 1 of process
                "Dock"' \
          -e 'delay 0.5' \
          -e 'tell application "System Events" to key code 53'
