# (2) Використання Ubuntu та Alpine Linux для розгортання веб-серверів Apache2 і Nginx

## Перевірка версії Docker
```shell
docker --version
```
## Завантаження образу Ubuntu
docker pull ubuntu

## Створення та запуск контейнера з Ubuntu
docker run -d -p 8080:80 --name new-ubuntu-container ubuntu tail -f /dev/null

## Виконання команд в контейнері з Ubuntu
docker exec -it new-ubuntu-container /bin/bash

## Оновлення пакетів та встановлення Apache2 в контейнері Ubuntu
apt-get update
apt-get install -y apache2

## Перевірка статусу Apache2
/etc/init.d/apache2 status

## Перегляд всіх контейнерів Docker
docker ps -a

## Запуск контейнера Ubuntu, якщо він зупинений
docker start new-ubuntu-container

## Вихід з контейнера Ubuntu
exit

## Створення та запуск контейнера з Alpine Linux
docker run -d -p 8080:80 --name new-alpine-container alpine tail -f /dev/null

## Виконання команд в контейнері з Alpine Linux
docker exec -it new-alpine-container /bin/sh

## Оновлення пакетів в контейнері Alpine Linux
apk update

## Встановлення Nginx в контейнері Alpine Linux
apk add nginx

## Запуск Nginx в контейнері Alpine Linux (якщо необхідно)
nginx
