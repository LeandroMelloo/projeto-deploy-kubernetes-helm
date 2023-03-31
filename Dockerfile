FROM golang:1.15
WORKDIR /go/src/gok8s
COPY . .
RUN GOOS=linux go build -ldflags="-s -w"
CMD ["./gok8s"]