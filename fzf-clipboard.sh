#!/bin/bash

echo -n "$(greenclip print | fzf -e -i)" | xclip -selection clipboard
