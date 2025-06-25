FROM openjdk:17-jdk-alpine
WORKDIR /app

# Baixa Lavalink e configura
RUN apk add --no-cache curl
RUN curl -L -o Lavalink.jar https://github.com/freyacodes/Lavalink/releases/latest/download/Lavalink.jar

# Adiciona o arquivo de configuração
COPY application.yml .

CMD ["java", "-jar", "Lavalink.jar"]
