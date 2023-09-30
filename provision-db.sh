#!/bin/bash
# Mise à jour du système
sudo apt-get update
sudo apt-get upgrade -y

# Installez votre base de données (par exemple, MySQL)
sudo apt-get install -y mysql-server

# Configurer la base de données, créer des utilisateurs, etc.
# Assurez-vous de sécuriser correctement votre base de données.

# Exemple : Création d'une base de données et d'un utilisateur
mysql -u root -p -e "CREATE DATABASE testDB;"
mysql -u root -p -e "CREATE USER 'myuser'@'localhost' IDENTIFIED BY '4#j4TA-qNf5yj5M5^3D+';"
mysql -u root -p -e "GRANT ALL PRIVILEGES ON mydb.* TO 'myuser'@'localhost';"

