FROM debian:bookworm

RUN apt update -y && apt install -y php8.2-fpm php8.2-mysql php8.2-curl curl

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN mkdir -p /var/www/html

RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

COPY tools/wpscript.sh . 

ENTRYPOINT [ "sh" , "./wpscript.sh" ]

CMD [ "php-fpm8.2", "-F" ]

