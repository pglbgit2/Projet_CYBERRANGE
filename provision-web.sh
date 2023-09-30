#!/bin/bash
# Mise à jour du système
sudo apt-get update
sudo apt-get upgrade -y

# Installez Python, Flask et d'autres dépendances
sudo apt-get install -y python3 python3-pip
sudo pip3 install Flask



# Copiez votre application Flask et démarrez le serveur Flask
/test/script.sh
python3 flask_app.py

