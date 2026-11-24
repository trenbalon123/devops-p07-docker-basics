#!/bin/bash
set -e
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
  -keyout /home/devops/devops6docker/certs/server.key \
  -out /home/devops/devops6docker/certs/server.crt \
  -subj "/CN=devops.local" 2>/dev/null
docker exec nginx-ssl nginx -s reload
