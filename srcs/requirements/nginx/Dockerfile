FROM alpine:3.16.2

COPY index.html /
RUN apk update && apk upgrade && apk add nginx=1.22.1-r0
COPY nginx.conf /etc/nginx/nginx.conf
RUN apk add --update openssl && \
    rm -rf /var/cache/apk/*
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj "/CN=aaitbelh" -keyout /etc/ssl/private/apache-selfsigned.key -out /etc/ssl/certs/apache-selfsigned.crt

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]


