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

node:
	docker compose -f docker/docker-compose.yml exec node sh;

# initialization
init\:env:
	cp .env.example .env
	make up
	docker compose -f docker/docker-compose.yml exec php composer install
	docker compose -f docker/docker-compose.yml exec php php artisan key:generate
	docker compose -f docker/docker-compose.yml exec php php artisan migrate
	docker compose -f docker/docker-compose.yml exec node npm install
