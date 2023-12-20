# container run
up:
	docker compose -f docker/docker-compose.yml up -d

build:
	docker compose -f docker/docker-compose.yml up -d --build

down:
	docker compose -f docker/docker-compose.yml down

# container join
php:
	docker compose -f docker/docker-compose.yml exec php sh;

nginx:
	docker compose -f docker/docker-compose.yml exec nginx sh;
