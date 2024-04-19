# (2) Використання Ubuntu та Alpine Linux для розгортання веб-серверів Apache2 і Nginx

## Перевірка версії Docker
```shell
docker --version
```
## Завантаження образу Ubuntu
```shell
docker pull ubuntu
```
## Створення та запуск контейнера з Ubuntu
```shell
docker run -d -p 8080:80 --name new-ubuntu-container ubuntu tail -f /dev/null
```
## Виконання команд в контейнері з Ubuntu
```shell
docker exec -it new-ubuntu-container /bin/bash
```
## Оновлення пакетів та встановлення Apache2 в контейнері Ubuntu
```shell
apt-get update
apt-get install -y apache2
```
## Перевірка статусу Apache2
```shell
/etc/init.d/apache2 status
```
## Перегляд всіх контейнерів Docker
```shell
docker ps -a
```
## Запуск контейнера Ubuntu, якщо він зупинений
```shell
docker start new-ubuntu-container
```
## Вихід з контейнера Ubuntu
```shell
exit
```
## Створення та запуск контейнера з Alpine Linux
```shell
docker run -d -p 8080:80 --name new-alpine-container alpine tail -f /dev/null
```
## Виконання команд в контейнері з Alpine Linux
```shell
docker exec -it new-alpine-container /bin/sh
```
## Оновлення пакетів в контейнері Alpine Linux
```shell
apk update
```
## Встановлення Nginx в контейнері Alpine Linux
```shell
apk add nginx
```
## Запуск Nginx в контейнері Alpine Linux (якщо необхідно)
```shell
nginx
```
