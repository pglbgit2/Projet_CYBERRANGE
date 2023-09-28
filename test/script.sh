#!/bin/bash
#Créer le fichier de server 
echo "from flask import Flask

app = Flask(__name__)

def getfrontend():
    file = open('frontend.html','r')
    contenu= file.read()
    file.close()
    return contenu


@app.route('/')
def frontend():
    return getfrontend()

if __name__ == '__main__':
    app.run(host='0.0.0.0')" > app.py

echo "<!DOCTYPE html>
<html>
    <head>
        <title>Some site</title>
        <meta charset="utf-8">
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>


        <p>TEST</p>
    </body>
    
</html>" > frontend.html
# Exécutez ifconfig pour obtenir la liste des interfaces réseau et leurs adresses IP
ifconfig_output=$(ifconfig)

# Utilisez awk pour extraire les adresses IP publiques (excluant les adresses privées)
public_ips=$(echo "$ifconfig_output" | awk '/inet / && !/127.0.0.1/ && !/inet 10\./ {gsub(/addr:/, "", $2); print $2}')

# Affiche les adresses IP publiques (sans celles qui commencent par 10)
echo "$public_ips" > /test/addr

python3 app.py &

