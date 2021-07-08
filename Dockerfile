FROM php:7.4-alpine

RUN wget https://phar.phpunit.de/phpunit-8.phar -O /usr/bin/phpunit && chmod +x /usr/bin/phpunit

RUN pecl bundle pcov && docker-php-ext-install /pcov && rm -rf /pcov

RUN echo "memory_limit=256M" >> $PHP_INI_DIR/php.ini
