FROM golang:1.27-alpine AS builder
WORKDIR /src

COPY go.mod ./
COPY . .

RUN go mod download
RUN CGO_ENABLED=0 GOOS=linux go build -ldflags="-s -w" -o app .

FROM scratch
WORKDIR /app

COPY --from=builder /src/app /app/app

EXPOSE 8080
ENTRYPOINT ["/app/app"]