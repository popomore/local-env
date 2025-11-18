# RabbitMQ 服务

基于 RabbitMQ 4.x 官方镜像，包含管理界面。

## 端口

- `5672`: AMQP 协议端口
- `15672`: 管理界面端口

## 默认配置

- 用户名: `admin`
- 密码: `admin123`

## 管理界面

启动服务后，可以通过 http://localhost:15672 访问管理界面。

## 环境变量

- `RABBITMQ_DEFAULT_USER`: 默认用户名
- `RABBITMQ_DEFAULT_PASS`: 默认密码

## 启动服务

```bash
# 启动 RabbitMQ 服务
docker-compose --profile build up rabbitmq -d

# 查看日志
docker-compose logs rabbitmq

# 停止服务
docker-compose stop rabbitmq
```
