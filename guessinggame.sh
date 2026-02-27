#!/bin/bash

# Fonction pour demander et vérifier le nombre de fichiers
check_guess() {
    if [[ $1 -lt $num_files ]]; then
        echo "Votre estimation est trop basse. Essayez encore."
    elif [[ $1 -gt $num_files ]]; then
        echo "Votre estimation est trop haute. Essayez encore."
    else
        echo "Félicitations ! Vous avez deviné correctement : $num_files fichiers."
        return 0
    fi
    return 1
}

# Compter le nombre de fichiers dans le répertoire actuel
num_files=$(ls -1 | wc -l)

echo "Bienvenue dans le jeu de devinette !"
echo "Pouvez-vous deviner combien de fichiers se trouvent dans le répertoire actuel ?"

while true; do
    read -p "Entrez votre estimation : " user_guess

    # Vérifier si l'entrée est un nombre
    if ! [[ "$user_guess" =~ ^[0-9]+$ ]]; then
        echo "Veuillez entrer un nombre valide."
        continue
    fi

    # Vérifier la réponse
    check_guess $user_guess
    if [[ $? -eq 0 ]]; then
        break
    fi
done

echo "Merci d'avoir joué !"
