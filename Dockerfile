FROM dokken/ubuntu-22.04
RUN apt update
RUN apt install apache2 php8.1 -y

#required config
RUN a2enmod rewrite
#php config for docker
RUN apt install php-mbstring php-xml php-mysql -y

COPY ./phpBB3 /var/www/html

WORKDIR /var/www/html
RUN rm index.html
RUN chmod 777 cache/ store/ files/ images/ config.php -R

EXPOSE 80
EXPOSE 443

CMD apachectl -D FOREGROUND
