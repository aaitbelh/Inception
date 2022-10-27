FROM debian:11.5

RUN apt-get update && apt-get install wget -y \
&& wget http://wordpress.org/latest.tar.gz && tar -xf latest.tar.gz && mv wordpress/* ./ && rm -f latest.tar.gz && cp wp-config-sample.php wp-config.php
