# container run
up:
	docker compose -f docker/docker-compose.yml up -d

build:
	docker compose -f docker/docker-compose.yml up -d --build

down:
	docker compose -f docker/docker-compose.yml down
