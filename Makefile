start:
	docker-compose up -d

update:
	docker-compose pull; \
	docker-compose up -d

stop:
	docker-compose down

