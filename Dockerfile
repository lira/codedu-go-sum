FROM golang:alpine as builder

RUN apk update

COPY src/sum .

RUN go build

FROM scratch

COPY --from=builder /go/sum /usr/bin/hello

CMD ["hello"]

