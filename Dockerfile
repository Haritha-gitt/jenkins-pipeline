FROM openjdk:17
ADD target/test-0.0.1-SNAPSHOT.jar test-0.0.1-SNAPSHOT.jar       
ENTRYPOINT ["java", "-jar","test-0.0.1-SNAPSHOT.jar"]
EXPOSE 8080
