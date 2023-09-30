#!/bin/bash
# Mise à jour du système
sudo apt-get update
sudo apt-get upgrade -y

#creation de la bdd
sudo apt-get install -y mysql-server
cat /test/data_sql_create.sql  > data_sql_create.sql
mysql < data_sql_create.sql