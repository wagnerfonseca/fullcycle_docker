FROM golang:1.27-alpine
COPY . .
RUN go build -o main .
EXPOSE 80
CMD ["./main"]