# 构建阶段
FROM node:24.2.0-alpine AS builder

WORKDIR /build

# 安装git用于克隆代码
RUN apk add --no-cache git

# 克隆代码并安装依赖
RUN git clone https://github.com/popomore/inspector.git /build && \
    npm install && \
    npm run build

# 运行时阶段
FROM node:24.2.0-alpine

WORKDIR /app

ENV DANGEROUSLY_OMIT_AUTH=true
ENV MCP_SERVER_REQUEST_TIMEOUT=60000

# 从构建阶段拷贝应用代码和依赖
COPY --from=builder /build /app

ENTRYPOINT ["node", "cli/build/cli.js"]
