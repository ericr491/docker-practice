FROM golang:1.16-alpine

EXPOSE 8080

WORKDIR /usr/src/app

COPY . .

RUN go build

RUN go test ./...

ENV PORT=8080

ENV REQUEST_ORIGIN=http://127.0.0.1:5000

CMD ["./server"]
