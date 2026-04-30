FROM golang:1.19-alpine AS builder
WORKDIR /app
COPY code/ .
RUN go build -o /lab3

FROM alpine:latest
COPY --from=builder /lab3 /lab3
CMD ["/lab3"]
