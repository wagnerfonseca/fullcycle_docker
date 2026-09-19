FROM golang:1.27-alpine AS builder
WORKDIR /src

COPY go.mod ./
COPY . .

RUN apk add --no-cache upx
RUN go mod download
RUN CGO_ENABLED=0 GOOS=linux go build \
	-trimpath \
	-buildvcs=false \
	-ldflags="-s -w" \
	-o /out/app . \
	&& upx --best --lzma /out/app

FROM scratch
WORKDIR /app

COPY --from=builder /out/app /app/app

EXPOSE 8080
ENTRYPOINT ["/app/app"]