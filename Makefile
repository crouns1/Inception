COMPOSE = docker compose -f srcs/docker-compose.yml
DATA_DIR = /home/jait-chd/data

all: up

up:
	@mkdir -p $(DATA_DIR)/wordpress
	@mkdir -p $(DATA_DIR)/mariadb
	@$(COMPOSE) up -d --build

down:
	@$(COMPOSE) down

re: down up

clean:
	@$(COMPOSE) down --rmi all --volumes

fclean: clean
	@sudo rm -rf $(DATA_DIR)

logs:
	@$(COMPOSE) logs -f

status:
	@docker ps -a

.PHONY: all up down re clean fclean logs status
