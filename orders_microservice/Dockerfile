FROM golang:latest
RUN mkdir /app
ADD . /app/
WORKDIR /app

EXPOSE 4201

RUN go mod init ordersservice
RUN go get github.com/gorilla/mux
# RUN go get -u github.com/go-sql-driver/mysql
RUN go build -o main .
CMD ["/app/main"]
