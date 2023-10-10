#!/bin/bash
# Mise à jour du système
sudo apt-get update
sudo apt-get upgrade -y

# Installation de python
sudo apt-get install -y python3 python3-pip
sudo pip3 install Flask
pip3 install flask_mysqldb
#sudo apt install mysql-server -y

#Copie des fichiers et copie de l'adresse ip
/test/scriptWeb.sh
python3 flask_app.py &

