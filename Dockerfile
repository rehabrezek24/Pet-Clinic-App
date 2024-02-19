FROM openjdk:17
WORKDIR /app
COPY .mvn/ .mvn
COPY mvnw pom.xml ./
COPY src ./src
RUN ./mvnw package
EXPOSE 8080
CMD ["java", "-jar", "target/spring-petclinic-3.2.0-SNAPSHOT.jar"]
