#Build static vue
FROM node:16.14.2-alpine3.15 as builder

WORKDIR /src

COPY . . 

RUN yarn install

RUN yarn run build


##Build the golang HTTP server
FROM golang:latest as runner

WORKDIR /app 

COPY go.mod go.sum ./

RUN go mod download

COPY serve/main.go .

RUN go build -o server main.go

EXPOSE 8080/tcp

COPY --from=builder /src/dist /web

CMD ["./server"]
