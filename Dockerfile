FROM golang:1.15

LABEL maintainer <Renato Nascimento renatodevops@gmail.com>

WORKDIR /go/src/fullcycle

COPY . .

RUN GOOS=linux go build -o fullcycle

EXPOSE 9001

ENTRYPOINT ["./fullcycle"]
