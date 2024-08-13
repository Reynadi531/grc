FROM golang:1.23-alpine

RUN apk update && \
    apk add git bash curl openssl musl-dev --no-cache

WORKDIR /app

RUN go install github.com/air-verse/air@latest

RUN git config --global --add safe.directory $PWD


CMD [ "air" ]
