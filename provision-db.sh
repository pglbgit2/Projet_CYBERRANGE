#!/bin/bash
# Mise à jour du système
sudo apt-get update
sudo apt-get upgrade -y

#creation de la bdd
sudo apt-get install -y mysql-server
cat /test/data_sql_create.sql  > data_sql_create.sql
cat /test/scriptDB.sh > scriptDB.sh
mysql < data_sql_create.sql

mysql -u root -p -e "CREATE USER 'myuser'@'localhost' IDENTIFIED BY '4#j4TA-qNf5yj5M5^3D+';"
mysql -u root -p -e "GRANT ALL PRIVILEGES ON MonSite.* TO 'myuser'@'localhost';"
mysql -u root -p -e "CREATE USER 'myuser'@'192.168.56.2' IDENTIFIED BY '4#j4TA-qNf5yj5M5^3D+';"
mysql -u root -p -e "GRANT ALL PRIVILEGES ON MonSite.* TO 'myuser'@'192.168.56.2' WITH GRANT OPTION;"


. scriptDB.sh
