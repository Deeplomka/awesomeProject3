FROM golang:1.21
RUN mkdir /files
COPY main.go /files
#COPY example.c /files
WORKDIR /files
RUN go build -o /files/main main.go
ENTRYPOINT ["/files/main"]