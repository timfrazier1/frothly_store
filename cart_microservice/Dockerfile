FROM golang:latest
RUN mkdir /app
ADD . /app/
WORKDIR /app

EXPOSE 4201

RUN go mod init cartservice
RUN go get github.com/gorilla/mux
RUN go build -o main .
CMD ["/app/main"]
