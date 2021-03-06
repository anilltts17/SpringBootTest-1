# For Java 8, try this
# FROM openjdk:8-jdk-alpine

# For Java 11, try this
FROM adoptopenjdk/openjdk11:alpine-jre

# Refer to Maven build -> finalName
ARG JAR_FILE=target/spring-boot-test.jar 

# cd /opt/app
WORKDIR /opt/app

# cp target/spring-boot-web.jar /opt/app/app.jar
COPY ${JAR_FILE} spring-boot-test.jar

# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","spring-boot-docker.jar"]