FROM wordpress:php7.4-apache

RUN apt update -y
RUN apt install -y vim
RUN apt install -y letsencrypt python3-certbot-apache
COPY sites-available/* /etc/apache2/sites-available/
RUN a2enmod ssl proxy headers