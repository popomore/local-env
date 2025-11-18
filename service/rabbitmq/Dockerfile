FROM rabbitmq:4-management

# 启用管理插件
RUN rabbitmq-plugins enable --offline rabbitmq_management

# 设置默认用户和密码
ENV RABBITMQ_DEFAULT_USER=admin
ENV RABBITMQ_DEFAULT_PASS=admin123

# 暴露端口
EXPOSE 5672 15672
