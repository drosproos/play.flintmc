FROM alpine:latest

# Install Java 17 + curl + netcat for server check
RUN apk add --no-cache openjdk17 curl netcat-openbsd

WORKDIR /server

COPY server /server

RUN chmod +x start.sh

EXPOSE 25565

CMD ["sh", "./start.sh"]


