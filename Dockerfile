FROM wordpress:php7.4-apache

RUN apt update -y
RUN apt install -y letsencrypt
COPY sites-available/* /etc/apache2/sites-available/
RUN a2enmod ssl