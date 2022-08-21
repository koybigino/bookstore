FROM goland:1.18.5-buster

WORKDIR /app

COPY go.mod .

RUN go get .

COPY . .

EXPOSE 8080

CMD ["go", "run", "cmd/main.go"]