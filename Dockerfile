FROM golang:1.22-alpine

RUN apk update && \
    apk add git bash curl openssl musl-dev tini --no-cache

WORKDIR /app

RUN go install github.com/air-verse/air@latest

ENTRYPOINT ["/sbin/tini", "--"]

CMD [ "air" ]