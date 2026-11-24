#!/bin/bash
set -x

# Удаляем старый контейнер, если есть
docker stop nginx-cont 2>/dev/null || true
docker rm nginx-cont 2>/dev/null || true

# Собираем образ
docker build -t devops/nginx-server ./nginx

# Создаём и запускаем контейнер
docker run -d --name nginx-cont -p 54321:80 \
  --restart unless-stopped \
  devops/nginx-server

# Проверяем
docker ps -a
sleep 3
curl -s 127.0.0.1:54321
docker logs -n 10 nginx-cont
