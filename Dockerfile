FROM alpine:3.15.0
RUN apk update
RUN apk add --no-cache ruby hyperfine
