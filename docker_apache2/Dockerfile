FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean && \
    rm -rf /var/lib/apt/list/*


COPY apache2.conf /etc/apache2/sites-avaible/0000-default.conf

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
