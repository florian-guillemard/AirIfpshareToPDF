#!/bin/bash
# Vérification de l'existence du répertoire ifpshare-converter
echo "Vérification de l'existance du répertoire ifpshare-converter..."

if [ -d "./ifpshare-converter" ]; then
    echo "Répertoire trouvé. Mise à jour en cours..."
    cd ./ifpshare-converter
    git pull
    cd ..
else
    echo "Répertoire non trouvé. Clonage du projet..."
    git clone https://github.com/KMChris/ifpshare-converter.git
    cd ./ifpshare-converter
    sed -i "s/app\.run(debug=False)/app.run(host='0.0.0.0', port=5000, debug=False)/" app.py
    cd ..
fi

# Construction et déploiement
echo "Construction et déploiement en cours..."
docker compose up -d --build