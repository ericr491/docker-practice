FROM openjdk:8

EXPOSE 8080

WORKDIR /usr/src/app

# Copy the contents of the repo into the image
COPY . .

RUN ./mvnw package

CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]