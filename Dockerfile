FROM golang:alpine as builder

RUN apk update

COPY src/sum .

RUN go build sum.go

FROM scratch

COPY --from=builder /go/sum /usr/bin/sum

CMD ["hello"]

