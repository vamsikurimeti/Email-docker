FROM openjdk:latest
EXPOSE 8080
ARG JAR_FILE=target/email-docker.jar
ADD ${JAR_FILE} email-docker.jar
ENTRYPOINT ["java","-jar","/email-docker.jar"]