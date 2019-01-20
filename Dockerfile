# build stage
FROM golang:1.11-alpine AS builder
WORKDIR /app
COPY . /app
RUN go build -o main

# final stage
FROM alpine
WORKDIR /app
ARG COMMIT_REF
ENV APP_COMMIT_REF=${COMMIT_REF}
COPY --from=builder /app/main /app/
CMD [ "./main" ]