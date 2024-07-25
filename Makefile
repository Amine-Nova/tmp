DIR-FILE= /home/abenmous/Desktop/Inception/srcs/docker-compose.yml

DOCKER  = docker

COMPOSE = docker-compose -f $(DIR-FILE)

all: up-build

up:
	mkdir -p /home/abenmous/Data/mariadb
	mkdir -p /home/abenmous/Data/wordpress
	$(COMPOSE) up

down:
	$(COMPOSE) down
	sudo rm -rf /home/abenmous/Data/*

build:
	mkdir -p /home/abenmous/Data/mariadb
	mkdir -p /home/abenmous/Data/wordpress
	$(COMPOSE) build

up-build: build up

fclean:
	$(DOCKER) system prune -af
	sudo rm -rf /home/abenmous/Data/*

re:	down fclean up-build