FROM golang:1.20-alpine

WORKDIR /src/

COPY *.go /src/
RUN CGO_ENABLED=0 go build hello.go

CMD [ "./hello" ]