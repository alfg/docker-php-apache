FROM alpine

RUN apk --update add php-apache2 php-cli curl php-json php-mbstring php-phar php-openssl && \
    rm -f /var/cache/apk/* && \
    curl -sS https://getcomposer.org/installer | php -- \
    --install-dir=/usr/local/bin --filename=composer && \
    mkdir -p /var/www/html/ && chown -R apache:apache /var/www/html

COPY src/ /var/www/html/
COPY etc/apache2/conf.d/test.conf /etc/apache2/conf.d/test.conf
COPY scripts/entrypoint.sh /opt/entrypoint.sh

EXPOSE 80

WORKDIR /var/www/html/
ENTRYPOINT [ "/opt/entrypoint.sh" ]