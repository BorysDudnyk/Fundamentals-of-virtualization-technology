# (1) Віртуалізація:
## Вивести версію Vagrant
```shell
vagrant --version
```
## Ініціалізувати Vagrantfile для віртуальної машини з образом Ubuntu Trusty 64
```shell
vagrant init ubuntu/trusty64
```
## Підключитися до віртуальної машини через SSH
```shell
vagrant ssh
```
## Ініціалізувати новий Vagrantfile для віртуальної машини з образом Ubuntu 20.04
```shell
vagrant init bento/ubuntu-20.04
```
## Переміститися до домашньої директорії віртуальної машини
```shell
cd
```
## Запустити віртуальну машину
```shell
vagrant up
```
## Підключитися до віртуальної машини через SSH
```shell
vagrant ssh
```
## Оновити пакети в системі
```shell
sudo apt-get update
```
## Встановити Python 3 і pip
```shell
sudo apt install -y python3 python3-pip
```
## Встановити FastAPI та Uvicorn
```shell
pip3 install fastapi uvicorn
```
## Створити файл main.py з кодом FastAPI за допомогою heredoc
```shell
cat <<EOF > main.py
from typing import Union
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"Hello": "World"}

@app.get("/items/{item_id}")
def read_item(item_id: int, q: Union[str, None] = None):
    return {"item_id": item_id, "q": q}
EOF
```
## Запустити FastAPI за допомогою Uvicorn на 0.0.0.0:8000
```shell
uvicorn main:app --host 0.0.0.0 --port 8000
```
## Підключитися до віртуальної машини через SSH
```shell
vagrant ssh
```
## Зберегти стан віртуальної машини як snapshot з ім'ям backup1
```shell
vagrant snapshot save backup1
```
## Вивести список збережених snapshot'ів
```shell
vagrant snapshot list
```
## Призупинити віртуальну машину
```shell
vagrant suspend
```
## Вимкнути віртуальну машину
```shell
vagrant halt
```
## Видалити віртуальну машину
```shell
vagrant destroy
```

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
## version: '3': Визначає версію docker-compose.
## services: Список сервісів (контейнерів) у додатку.
## Кожен сервіс має властивості:
## image: Образ Docker, який використовується для створення контейнера.
## ports: Відображення портів між контейнером і хостом.
## environment: Змінні оточення для налаштування сервісу.
## command: Команда, яку потрібно виконати в контейнері (api сервіс).
## networks: Визначає мережу, до якої підключений сервіс.
## networks: Опис мереж, що використовуються додатком (mynetwork).

# (7) Використання kubectl для управління кластерами Kubernetes:
## Перевірка інформації про кластер
```shell
kubectl cluster-info
```
## Перевірка версії kubectl
```shell
kubectl version
```
## Застосування конфігурацій з файлу `test.yaml`
```shell
kubectl apply -f test.yaml
```
## Отримання інформації про розгортання (деплойменти)
```shell
kubectl get deployments
```
## Видалення розгортання з ім'ям `my-app-deployment`
```shell
kubectl delete deploy my-app-deployment
```
## Deployment і Service для Nginx

## Цей файл визначає два ресурси Kubernetes: `Deployment` та `Service` для розгортання додатку на основі Nginx.

## Deployment
```shell
- **apiVersion**: `apps/v1`
- **kind**: `Deployment`
- **metadata**: Визначає ім'я розгортання: `my-app-deployment`.
- **spec**:
    - **replicas**: `1`: Кількість реплік подів для розгортання.
    - **selector**: Мітки для відбору подів: `app: my-app`.
    - **template**: Шаблон для створення подів:
        - **metadata**: Мітки для подів: `app: my-app`.
        - **spec**: Специфікація подів:
            - **containers**: Описує контейнер для подів:
                - **name**: `my-app-container`
                - **image**: `nginx:latest`: Образ Docker для контейнера.
                - **ports**: Відкриває порт `80` у контейнері.
```
## Service
```shell
- **apiVersion**: `v1`
- **kind**: `Service`
- **metadata**: Ім'я сервісу: `my-app-service`.
- **spec**:
    - **selector**: Відбирає поди за міткою: `app: my-app`.
    - **ports**: Визначає порти для сервісу:
        - **protocol**: `TCP`
        - **port**: `80`: Порт на хості.
        - **targetPort**: `80`: Порт у поді.
    - **type**: `ClusterIP`: Внутрішній IP-адрес сервісу.
```
## Цей YAML-файл дозволяє розгорнути додаток на основі Nginx і забезпечити доступ до нього через сервіс в межах кластера Kubernetes.

# (8) Побудова і завантаження Docker-образів на Docker Hub:

## Побудова Docker-образу Nginx
```shell
docker build -t kindudu/nginx-image .
```
## Завантаження образу Nginx на Docker Hub
```shell
docker push kindudu/nginx-image:latest
```
## Побудова Docker-образу Apache2
```shell
docker build -t kindudu/apache2-image .
```
## Завантаження образу Apache2 на Docker Hub
```shell
docker push kindudu/apache2-image:latest
```
## Перевірка завантаження образів на Docker Hub:
## Для перевірки, переконайтеся, що образи були завантажені успішно на Docker Hub, переглянувши сторінку репозиторію:
## https://hub.docker.com/repository/docker/kindudu/nginx-image
## https://hub.docker.com/repository/docker/kindudu/apache2-image
