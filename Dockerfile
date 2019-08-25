FROM alpine:3.10

RUN apk --update add \
    curl php-apache2 php-cli php-json php-mbstring php-phar php-openssl && \
    rm -f /var/cache/apk/* && \
    curl -sS https://getcomposer.org/installer | php -- \
    --install-dir=/usr/local/bin --filename=composer && \
    mkdir -p /var/www/html/ && chown -R apache:apache /var/www/html

COPY src/ /var/www/html/
COPY etc/apache2/httpd.conf /etc/apache2/httpd.conf
COPY etc/apache2/sites/ /etc/apache2/sites/
COPY etc/php/php.ini /etc/php7/php.ini
COPY scripts/entrypoint.sh /opt/entrypoint.sh

EXPOSE 80

WORKDIR /var/www/html/
ENTRYPOINT [ "/opt/entrypoint.sh" ]
