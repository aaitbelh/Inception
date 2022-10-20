FROM alpine:3.16.2

COPY test.html /
COPY nginx.conf /etc/nginx/nginx.conf
RUN apk update && apk add nginx

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]


