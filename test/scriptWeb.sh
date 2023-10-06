#!/bin/bash
#Créer le fichier de server 
cat /test/flask_app.py  > flask_app.py
cat /test/frontend.html > frontend.html
cat /test/Formulaire/Formulaire.html > Formulaire.html
cat /test/Formulaire/formulaire_css.css > formulaire_css.css
cat /test/installflask_mysql.py > installflask_mysql.py

python3 installflask_mysql.py
# Exécutez ifconfig pour obtenir la liste des interfaces réseau et leurs adresses IP
ifconfig_output=$(ifconfig)

# Utilisez awk pour extraire les adresses IP publiques (excluant les adresses privées)
public_ips=$(echo "$ifconfig_output" | awk '/inet / && !/127.0.0.1/ && !/inet 10\./ {gsub(/addr:/, "", $2); print $2}')

# Affiche les adresses IP publiques (sans celles qui commencent par 10)
echo "$public_ips" > /test/addrWeb
vm_ip=$(cat /test/addrDB)
sed -i "s/DATABASE_HOST = os.getenv(\"IPDATABASE\")/DATABASE_HOST = os.getenv(\"${vm_ip}\")/" /test/flask_app.py

