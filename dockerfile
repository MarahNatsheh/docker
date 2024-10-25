FROM golang:1.18.3

RUN mkdir /app

ADD . /app

WORKDIR /app

ENV CGO_ENABLED=0

RUN go build -o backend

EXPOSE 3000

ENTRYPOINT [ "./backend" ]