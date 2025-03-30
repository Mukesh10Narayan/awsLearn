FROM openjdk:24
EXPOSE 8080
ADD target/aws-learn-*.jar aws-learn.jar
ENTRYPOINT ["java","-jar","/aws-learn.jar"]