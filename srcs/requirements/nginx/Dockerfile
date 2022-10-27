FROM debian:11.5

COPY index.html /
RUN apt-get update && apt-get upgrade -y && \
 apt-get install nginx=1.18.0-6.1+deb11u2 -y
COPY nginx.conf /etc/nginx/nginx.conf
RUN apt-get install openssl && \
    rm -rf /var/cache/apk/*
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj "/CN=aaitbelh" -keyout /etc/ssl/private/apache-selfsigned.key -out /etc/ssl/certs/apache-selfsigned.crt

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]


