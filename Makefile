build:
	docker build -t redis:latest -f ./redis/Dockerfile ./redis

deploy: build
	docker-compose up -d

kill:
	docker-compose kill
