#!/bin/bash

# Vérifier si le dossier n'existe pas
if [ ! -d "/var/www/html/" ]; then
  mkdir -p /var/www/html/
fi

# Vérifier si le dossier est vide
if [ -z "$(ls -A /var/www/html/)" ]; then
  echo "Création du projet Symfony. Merci de patienter, cela peut prendre plusieurs minutes..."
  ~/.symfony5/bin/symfony new /var/www/html --webapp --version="7.3.x-dev" --no-interaction
  composer require symfony/apache-pack
  mv /tmp/.htaccess  /var/www/html/public/.htaccess
  echo '   ___  ___  ________  ________  ___  __                   ________  _______   ___  ___            '  
  echo '  |\  \|\  \|\   __  \|\   ____\|\  \|\  \                |\   __  \|\  ___ \ |\  \|\  \           ' 
  echo '  \ \  \\\  \ \  \|\  \ \  \___|\ \  \/  /|_  ____________\ \  \|\  \ \   __/|\ \  \ \  \          '
  echo '   \ \   __  \ \   __  \ \  \    \ \   ___  \|\____________\ \  \\\  \ \  \_|/_\ \  \ \  \         '
  echo '    \ \  \ \  \ \  \ \  \ \  \____\ \  \\ \  \|____________|\ \  \\\  \ \  \_|\ \ \  \ \  \____    '
  echo '     \ \__\ \__\ \__\ \__\ \_______\ \__\\ \__\              \ \_______\ \_______\ \__\ \_______\  '
  echo '      \|__|\|__|\|__|\|__|\|_______|\|__| \|__|               \|_______|\|_______|\|__|\|_______|  '
  echo ' '
  echo 'Votre environnement est pret !'
  echo ' '
  echo 'Site Web (Symfony) http://localhost'
  echo 'PhpMyAdmin : http://localhost:8080'
  echo 'MailHog : http://localhost:8025'
fi

# Démarrer PHP-FPM et arrêter la sortie dans la console
php-fpm > /dev/null 2>&1

exec "$@" > /dev/null 2>&1