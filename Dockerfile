FROM php:7.1.5-alpine
RUN set -ex \
    && apk --no-cache add postgresql-dev \
    && docker-php-ext-install pdo pdo_mysql pdo_pgsql

WORKDIR /var/www
RUN mkdir plugins
RUN curl --connect-timeout 120 -m 120 -L -o adminer.php https://github.com/vrana/adminer/releases/download/v4.6.3/adminer-4.6.3.php
RUN curl --connect-timeout 120 -m 120 -o plugins/plugin.php https://raw.githubusercontent.com/vrana/adminer/master/plugins/plugin.php
RUN curl --connect-timeout 120 -m 120 -o plugins/login-password-less.php https://raw.githubusercontent.com/vrana/adminer/master/plugins/login-password-less.php
RUN curl --connect-timeout 120 -m 120 -o adminer.css https://raw.githubusercontent.com/arcs-/Adminer-Material-Theme/master/adminer.css

ADD index-load-plugins.php ./index.php

EXPOSE 8080

ENTRYPOINT ["php", "-S", "0.0.0.0:8080"]
