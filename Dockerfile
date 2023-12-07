FROM openjdk:8-jre-alpine

RUN apk update && apk add bash

WORKDIR /app

COPY /target/vprofile-v2.war /app

EXPOSE 8083

CMD ["java", "-war", "vprofile-v2.war"]
