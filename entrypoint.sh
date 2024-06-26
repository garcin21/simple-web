#!/bin/sh

# Remplacer les variables dans le fichier HTML
sed -i "s/Default Title/$TITLE/" /usr/share/nginx/html/index.html
sed -i "s|default-image.jpg|$IMAGE_URL|" /usr/share/nginx/html/index.html
sed -i "s/Default Name/$NAME/" /usr/share/nginx/html/index.html

# Démarrer Nginx
nginx -g 'daemon off;'
