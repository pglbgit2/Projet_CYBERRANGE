#!/bin/bash
# Mise à jour du système
sudo apt-get update
sudo apt-get upgrade -y

# Installez Python, Flask et d'autres dépendances
sudo apt-get install -y python3 python3-pip
sudo pip3 install Flask

# Copiez votre application Flask et démarrez le serveur Flask
cp /vagrant/flask_app.py /home/vagrant/
cd /home/vagrant/
python3 flask_app.py

