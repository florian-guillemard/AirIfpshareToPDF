# Air IFPShare Converter (Docker)

Ce projet propose une version Dockerisée du [IFPShare Converter](https://github.com/KMChris/ifpshare-converter) développé par [@KMChris](https://github.com/KMChris). Il permet de convertir des documents IFPShare en fichiers PDF ou ZIP via une interface web basée sur Flask.

## Fonctionnalités

- **Conversion en PDF :** Génère un fichier PDF à partir d'un document IFPShare.
- **Téléchargement en ZIP :** Regroupe les ressources du document dans une archive ZIP.
- **Dockerisé :** Installation et déploiement simplifiés grâce à Docker et Docker Compose.

## Prérequis

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Installation

1. **Cloner le dépôt :**

   ```bash
   git clone https://github.com/votre-utilisateur/ifpshare-converter-docker.git
   cd ifpshare-converter-docker
   ```

2. **Lancer le script d'installation :**

   Utilisez le script `install.sh` pour cloner ou mettre à jour le projet et déployer l'application avec Docker :

   ```bash
   chmod +x install.sh
   ./install.sh
   ```

   Ce script vérifie l'existence du répertoire `ifpshare-converter`, effectue une mise à jour si nécessaire, applique les modifications de configuration et déploie le conteneur.

## Utilisation

Une fois le conteneur lancé, accédez à l'application via votre navigateur à l'adresse suivante :

```
http://localhost:5000
```

### Conversion de documents

- **Conversion en PDF :** Saisissez une URL valide d'un document IFPShare dans le formulaire et cliquez sur le bouton de conversion en PDF.
- **Téléchargement en ZIP :** Sélectionnez l'option de téléchargement ZIP pour obtenir les ressources du document sous forme d'archive compressée.

## Configuration

L'application écoute par défaut sur le port `5000`. Vous pouvez modifier le mapping des ports en ajustant le fichier `docker-compose.yml` :

```yaml
services:
  web:
    ports:
      - "5000:5000"
```

Si nécessaire, changez le port d'écoute ou le port mappé pour l'adapter à votre environnement.

## Personnalisation

Vous êtes libre de forker ce dépôt et d'apporter vos propres modifications afin d'adapter l'application à vos besoins. Toute contribution ou suggestion d'amélioration est la bienvenue !

## Licence

Ce projet est distribué sous licence [MIT](LICENSE). Consultez le fichier LICENSE pour plus de détails.

## Remerciements

- [IFPShare Converter par KMChris](https://github.com/KMChris/ifpshare-converter) pour le projet original.
- Merci à tous les contributeurs pour leur soutien et leurs améliorations.
