# Utiliser une image de base avec un serveur web simple
FROM nginx:alpine

# Définir les arguments qui peuvent être passés lors de la construction de l'image
ARG TITLE="My Simple Web Page"
ARG NAME="Default Name"
ARG IMAGE_URL="default-image.jpg"

# Copier les fichiers de l'application dans le répertoire du serveur web
COPY index.html /usr/share/nginx/html/index.html

# Utiliser un script pour remplacer les variables dans le fichier HTML
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Exécuter le script au démarrage du conteneur
ENTRYPOINT ["/entrypoint.sh"]
