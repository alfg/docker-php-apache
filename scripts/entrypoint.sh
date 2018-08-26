#!/bin/sh

ln -sf /dev/stdout /var/log/access_log && \
ln -sf /dev/stderr /var/log/error_log && \
ln -sf /dev/stdout /var/log/apache2/access_log && \
ln -sf /dev/stderr /var/log/apache2/error_log

mkdir -p /run/apache2 && \
  /usr/sbin/httpd -D FOREGROUND

exit "$@"

#   chown -R apache:apache /var/www/html && \