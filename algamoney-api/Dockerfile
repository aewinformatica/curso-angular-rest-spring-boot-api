FROM ubuntu:latest AS build

RUN apt-get update
RUN apt-get install openjdk-17-jdk -y

COPY . .

RUN apt-get install maven -y
RUN mvn clean install -Dmaven.test.skip

FROM openjdk:17-jdk-slim

EXPOSE 8080

COPY --from=build /target/AeWMoneyAPI.jar AeWMoneyAPI.jar

ENTRYPOINT [ "java", "-jar", "AeWMoneyAPI.jar" ]