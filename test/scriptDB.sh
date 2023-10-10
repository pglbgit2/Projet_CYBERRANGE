#!/bin/bash

### ----Paramétrage de l'accès à MySQL---- ###

sed -i 's/^bind-address.*/bind-address            = 192.168.56.3/g' /etc/mysql/mysql.conf.d/mysqld.cnf
