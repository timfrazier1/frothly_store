FROM golang:latest
RUN mkdir /app
ADD . /app/
WORKDIR /app

EXPOSE 6767

RUN go mod init productservice
RUN go get github.com/gorilla/mux
# RUN go get -u github.com/go-sql-driver/mysql
RUN go build -o main .
CMD ["/app/main"]
