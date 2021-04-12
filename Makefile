start:
	docker-compose --env-file .env up -d

update:
	docker-compose pull; \
	docker-compose --env-file .env up -d

stop:
	docker-compose down

logs:
	docker-compose logs -f
	
