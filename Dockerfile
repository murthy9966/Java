FROM openjdk:8-jre-alpine

RUN apk update && apk add bash

WORKDIR /app

COPY /target/vprofile-v2.war /app

EXPOSE 8082

CMD ["java", "-jar", "vprofile-v2.war"]
