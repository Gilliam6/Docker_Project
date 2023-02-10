all:
	@mkdir -p ~/data/mariaDB ~/data/wb ~/data/portainer
	docker compose -f ./srcs/docker-compose.yml up -d --build --force-recreate
logs:
	@docker compose -f ./srcs/docker-compose.yml logs
ps:
	@docker compose -f ./srcs/docker-compose.yml ps
	@echo "------------------------------------------"
	docker volume ls
	@echo "------------------------------------------"
	docker network ls
down:
	docker compose -f ./srcs/docker-compose.yml down
fclean: 
	@sudo chmod 777 /home/rstephan/Inception2/srcs/requirements/tools/fclean.sh
	@bash /home/rstephan/Inception2/srcs/requirements/tools/fclean.sh 2> /dev/null
re:	down fclean all

PONY: all re logs fclean docker down ps
