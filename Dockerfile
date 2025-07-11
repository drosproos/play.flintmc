FROM openjdk:17-alpine
WORKDIR /server

# Install curl
RUN apk add --no-cache curl

COPY server/start.sh /server/start.sh
RUN chmod +x /server/start.sh

COPY server/eula.txt /server/eula.txt
COPY server/server.properties /server/server.properties
COPY server/plugins /server/plugins

CMD ["sh", "start.sh"]
