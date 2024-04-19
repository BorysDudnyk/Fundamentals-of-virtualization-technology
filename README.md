# (2) Використання Ubuntu та Alpine Linux для розгортання веб-серверів Apache2 і Nginx:

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

# (3) Робота з Docker та використання томів для спільного зберігання даних між різними контейнерами:

## Створення тома Docker
```shell
docker volume create my_data_volume
```
## Створення контейнера my_container_1 з підключеним томом my_data_volume
```shell
docker run -it --name my_container_1 -v my_data_volume:/app ubuntu
```
## Перевірка вмісту папки /app
```shell
ls
cd /app
```
## Створення файлу myfile.txt з текстом "Hello, Docker!"
```shell
echo "Hello, Docker!" > myfile.txt
```
## Перевірка наявності файлу myfile.txt
```shell
ls
cat myfile.txt
```
## Вихід з контейнера my_container_1
```shell
exit
```
## Створення контейнера my_container_2 з підключеним томом my_data_volume
```shell
docker run -it --name my_container_2 -v my_data_volume:/app ubuntu
```
## Перевірка наявності файлу myfile.txt у папці /app
```shell
cd /app
ls
cat myfile.txt
```
## Оновлення списку пакетів
```shell
apt-get update
```
## Встановлення редактора тексту nano
```shell
apt-get install -y nano
```
## Зміна дозволів на файл myfile.txt
```shell
chmod 700 /app/myfile.txt
```
## Редагування файлу myfile.txt за допомогою nano
```shell
nano myfile.txt
```
## Вихід з контейнера my_container_2
```shell
exit
```
## Створення нового користувача user1 з UID 1000
```shell
useradd -m -u 1000 user1
```
## Перехід до облікового запису користувача user1
```shell
su user1
```
## Перевірка наявності файлу myfile.txt у папці /app
```shell
cd /app
ls
cat myfile.txt
```
## Редагування файлу myfile.txt за допомогою nano
```shell
nano myfile.txt
```

# (4) Створення та управління Docker-образами та контейнерами з використанням Nginx та Apache2

## Створення директорії для лабораторії та перехід до неї
```shell
mkdir my_docker_lab
cd my_docker_lab
```
## Створення конфігураційних файлів (редагуйте їх за необхідності)
```shell
notepad nginx.conf
notepad supervisord.conf
```
## Побудова Docker-образу для Nginx
```shell
docker build -t my-nginx-image .
```
## Запуск контейнера з Nginx
```shell
docker run -d --name my-nginx-container -p 8080:80 my-nginx-image
```
## Зупинка та видалення контейнера та образу
```shell
docker stop my-nginx-container
docker rm my-nginx-container
docker rmi my-nginx-image
```
## Побудова образу Nginx з аргументом build
```shell
docker build -t my-nginx-image --build-arg NGINX_VERSION=3.17 .
```
## Побудова Docker-образу для Apache2
```shell
docker build -t my-apache2-image .
```
## Запуск контейнера з Apache2
```shell
docker run -d --name my-apache2-container -p 8080:80 my-apache2-image
```

# (5) Створення та управління Docker-образами і контейнерами з можливостями мережевої адміністрації

## Побудова Docker-образу
```shell
docker build -t networking-image .
```
## Запуск контейнера з правами мережевої адміністрації
```shell
docker run --cap-add=NET_ADMIN -it --name networking-container networking-image /bin/sh
```
## Перевірка мережевих налаштувань
```shell
ip addr show eth0
ip route show
```
## Побудова образу з аргументами build
```shell
docker build -t networking-image --build-arg IP_ADDRESS=192.168.0.2 --build-arg IP_ADDRESS=192.168.0.1 .
```
## Запуск контейнера з новим образом і правами мережевої адміністрації
```shell
docker run --cap-add=NET_ADMIN -it --name networking-container networking-image /bin/sh
```
## Dockerfile:
## Використання базового образу Alpine
```shell
FROM alpine
```
## Встановлення необхідних пакетів
```shell
RUN apk update && apk add iproute2 curl
```
## Копіювання мережевого скрипта
```shell
COPY network.sh /network.sh
```
## Надання дозволів на виконання скрипта
```shell
RUN chmod +x /network.sh
```
## Встановлення команди за замовчуванням
```shell
CMD ["/network.sh"]
```
## network.sh:
```shell
#!/bin/sh
```
## Додавання IP-адреси на інтерфейс eth0
```shell
ip addr add 192.168.0.2/24 dev eth0
```
## Додавання маршруту за замовчуванням
```shell
ip route add default via 192.168.0.1
```

# (6) docker-compose для управління багатоконтейнерним додатком

## Запуск додатку у фоновому режимі
```shell
docker-compose up -d
```
## Перевірка стану контейнерів
```shell
docker-compose ps
```
## Доступ до веб-сервісу через браузер
## Перейдіть за посиланням http://localhost:8080/

## Виконання команди в контейнері `db`
```shell
docker-compose exec db psql -U myuser -d mydatabase
```
## Зупинка та видалення контейнерів
```shell
docker-compose down
```
## Повторний запуск додатку у фоновому режимі
```shell
docker-compose up -d
```
## Перевірка стану контейнерів
```shell
docker-compose ps
```
## Зупинка та видалення контейнерів
```shell
docker-compose down
```
## Остаточний запуск додатку у фоновому режимі
```shell
docker-compose up -d
```
## Остаточна перевірка стану контейнерів
```shell
docker-compose ps
```

