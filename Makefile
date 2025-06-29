all: up

up:
	@mkdir -p /home/hel-band/data/wordpress
	@mkdir -p /home/hel-band/data/mariadb
	docker-compose -f ./srcs/docker-compose.yml up --build -d

down:
	docker-compose -f ./srcs/docker-compose.yml down

clean: down
	docker system prune -a --force

fclean: clean
	@sudo rm -rf /home/hel-band/data/wordpress
	@sudo rm -rf /home/hel-band/data/mariadb

re: fclean all

.PHONY: all up down clean fclean re
