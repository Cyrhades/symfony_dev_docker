# Environnement de développement Symfony 7

## Quickly
> git clone https://github.com/Cyrhades/symfony_dev_docker && cd symfony_dev_docker && make build-env

ou dans le dossier courant

> git clone https://github.com/Cyrhades/symfony_dev_docker . && make build-env

## Avec le Makefile
> make build-env

------------------

## Sans le Makefile
> docker-compose -p hack-oeil-symfony-dev -f ./.docker/docker-compose.yml up



Enjoy ;-)

Urls :
-------
Serveur HTTP : http://localhost

PhpMyAdmin : http://localhost:8080 

    - MYSQL_DATABASE=ho_symfony_dev
    - MYSQL_USER=symfony_db
    - MYSQL_PASSWORD=ym8dz8EjcxyyGSo

Répertoire :
------------
Base de données : ./project/db
Projet Symfony : ./project/web

