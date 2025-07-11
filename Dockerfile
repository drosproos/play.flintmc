FROM alpine:latest

# ✅ Install Java 17 and curl (required for PaperMC)
RUN apk add --no-cache openjdk17 curl

# ✅ Set working directory
WORKDIR /server

# ✅ Copy all Minecraft files into /server
COPY server /server

# ✅ Give execute permission to start script
RUN chmod +x start.sh

# ✅ Expose the Minecraft port (25565)
EXPOSE 25565

# ✅ Start the Minecraft server
CMD ["sh", "./start.sh"]

