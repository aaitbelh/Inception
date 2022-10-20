FROM alpine:3.16

COPY /tools/nginx.conf /etc/nginx/nginx.conf

RUN apk update && apk add nginx>=1.23.2-suffix

CMD ["nginx", "-g", "daemon off"]
