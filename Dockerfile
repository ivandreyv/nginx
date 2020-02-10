FROM alpine:3.10

MAINTAINER "ivandreyv@gmail.com"

RUN apk update 
RUN apk add --no-cache nginx nginx-mod-stream nginx-mod-http-lua-upstream nginx-mod-stream-js nginx-mod-stream-geoip2 nginx-mod-http-upstream-fair nginx-mod-stream-geoip

RUN mkdir -p /run/nginx/

ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]

