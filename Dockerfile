FROM node:12-alpine

RUN apk update && apk upgrade && apk --no-cache add util-linux git g++ gcc libgcc libstdc++ linux-headers make python && \
    rm -rf /var/cache/apk/*
