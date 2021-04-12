start:
	docker-compose --env-file .env up -d

install:
	docker-compose --env-file .env up -d maria_db phpmyadmin

update:
	docker-compose pull; \
	docker-compose --env-file .env up -d

stop:
	docker-compose down

logs:
	docker-compose logs -f
	
