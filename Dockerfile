FROM openjdk:8
ADD target/test-0.0.1-SNAPSHOT.jar       
ENTRYPOINT ["java", "-jar","test-0.0.1-SNAPSHOT.jar"]
EXPOSE 8080
