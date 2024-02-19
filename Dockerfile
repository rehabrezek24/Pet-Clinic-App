FROM openjdk:17
WORKDIR /app
COPY target/*.jar  /app/target
EXPOSE 8080
CMD ["java", "-jar", "/app/target"]

