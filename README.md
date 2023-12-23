# Service in Local Environment

Start services with zero configuration locally

> The docker image has only been tested on Mac

## Requires

- Docker

## Usage

- Create a .env file, see each service for specific configurations
- Use `make deploy` to start services with one command

## Service

### mysql

Configuration files can be placed in the `mysql/conf` directory

Set environment variables in `.env`

- MYSQL_ROOT_PASSWORD: Set mysql password

Exposed ports

- 3306

### redis

Configuration files can be placed in the `redis/conf` directory

Set environment variables in `.env`

- REDIS_PASSWORD: Set redis password

Exposed ports

- 6379

### minio

Set environment variables in `.env`

- MINIO_ROOT_PASSWORD: Set minio password
- MINIO_ROOT_USER: Set minio user

Exposed ports

- 9000
- 9001: Management console

### chroma

Exposed port

- 10001
