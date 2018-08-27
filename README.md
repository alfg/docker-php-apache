# Docker PHP Apache
A Dockerfile installing Apache 2.4, mod_php with a default settings template. Built on Alpine Linux for a small footprint ~26MB.

Use this as a template for serving PHP applications on Apache.


[![Docker Stars](https://img.shields.io/docker/stars/alfg/php-apache.svg)](https://hub.docker.com/r/alfg/php-apache/)
[![Docker Pulls](https://img.shields.io/docker/pulls/alfg/php-apache.svg)](https://hub.docker.com/r/alfg/php-apache/)
[![Docker Automated build](https://img.shields.io/docker/automated/alfg/php-apache.svg)](https://hub.docker.com/r/alfg/php-apache/builds/)
[![Build Status](https://travis-ci.org/alfg/docker-php-apache.svg?branch=master)](https://travis-ci.org/alfg/docker-php-apache)

## Usage

* Pull docker image and run:
```
docker pull alfg/php-apache
docker run -it -p 8080:80 --rm alfg/php-apache
```

* or build and run container from source:
```
docker build -t php-apache
docker run -it -p 8080:80 --rm php-apache
```

* or build using `docker-compose`:
```
docker-compose build
docker-compose up
```

```
$ curl -I localhost:8080/info.php

HTTP/1.1 200 OK
Date: Mon, 27 Aug 2018 00:18:27 GMT
Server: Apache/2.4.34 (Unix)
X-Powered-By: PHP/7.2.8
Content-Type: text/html; charset=UTF-8
```

## Configure
Apache and PHP default configurations are included in the [etc](/etc) directory. You can override the configurations and these will be copied over into the container.

Also see [etc/apache2/sites/](/etc/apache/sites) for adding or editing virtual hosts.

## Resources
* https://httpd.apache.org/docs/2.4/
