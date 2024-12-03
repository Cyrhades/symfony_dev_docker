# Commande pour lancer Docker Compose
build-env:
	docker-compose -p hack-oeil-symfony-dev -f ./.docker/docker-compose.yml up
	exit