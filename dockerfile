FROM openjdk:17-jdk-slim

USER root:root

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} /apps/ocs-microservice-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/apps/ocs-microservice-0.0.1-SNAPSHOT.jar"]