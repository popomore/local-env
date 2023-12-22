build:
	docker build -t redis:latest -f ./redis/Dockerfile ./redis
	docker build -t minio:latest -f ./minio/Dockerfile ./minio
	docker build -t mysql:latest -f ./mysql/Dockerfile ./mysql

deploy: build
	docker-compose up -d

stop:
	docker-compose kill
