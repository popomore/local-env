build:
	docker-compose --profile build build

start: build
	docker-compose --profile default up -d

stop:
	docker-compose kill
