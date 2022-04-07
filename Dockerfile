FROM golang:alpine as build

RUN apk update && apk add --no-cache git

WORKDIR /src

COPY . .

RUN go mod tidy

RUN go test ./... -cover

RUN go build -o sample-sum-go

FROM alpine

WORKDIR /app

COPY --from=build /src/sample-sum-go /app

ENTRYPOINT ["/app/sample-sum-go"]