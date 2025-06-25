FROM openjdk:17-alpine

WORKDIR /app

RUN apk add --no-cache curl

RUN curl -Lo Lavalink.jar https://github.com/freyacodes/Lavalink/releases/latest/download/Lavalink.jar

COPY application.yml .

EXPOSE 8080

CMD ["java", "-jar", "Lavalink.jar"]
