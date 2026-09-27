FROM debian:bookworm

RUN apt-get update && apt-get install -y \
    php php-fpm php-mysql php-curl php-gd php-intl \
    php-mbstring php-xml php-zip \
    curl mariadb-client && \
    rm -rf /var/lib/apt/lists/*

COPY conf/www.conf /etc/php/8.2/fpm/pool.d/www.conf
COPY tools/init.sh /usr/local/bin/init.sh
RUN chmod +x /usr/local/bin/init.sh
RUN mkdir -p /run/php

EXPOSE 9000

ENTRYPOINT ["init.sh"]
