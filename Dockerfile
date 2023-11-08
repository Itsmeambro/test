FROM eclipse-temurin:19.0.1_10-jdk-alpine
ARG JAR_FILE=target/thymeleaf-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]


