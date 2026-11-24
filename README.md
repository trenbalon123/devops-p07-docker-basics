# Практика П07 — Docker Basics

Сборка собственного Docker-образа Nginx (`nginx/dockerfile`), скрипт развёртывания `deploy.sh`, а также доп. задание: запуск Nginx с самоподписанным SSL-сертификатом через Volume Mapping и обновление сертификата без перезапуска контейнера (`renew_cert.sh` + `nginx -s reload`).

- `nginx/` — `dockerfile`, `index.html`, `nginx-conf/nginx.conf`
- `deploy.sh`, `nginx-ssl.conf`, `renew_cert.sh`
- `report/Отчет_П07.docx` — отчёт со скриншотами
