FROM nginx:alpine

RUN apk update && \
    apk add dumb-init

ADD rootfs/ /

WORKDIR /var/www

ENTRYPOINT ["dumb-init", "--"]
CMD ["nginx", "-g", "daemon off;"]
