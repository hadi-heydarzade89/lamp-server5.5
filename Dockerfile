FROM  php:5.6

WORKDIR /var/www/html
RUN apt-get update && apt-get install -y \
    libmcrypt-dev
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install pdo
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install  mcrypt
RUN  docker-php-ext-enable pdo_mysql
