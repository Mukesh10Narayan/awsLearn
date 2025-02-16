FROM openjdk:17
EXPOSE 8080
ADD target/awsLearn-*.jar awsLearn.jar
ENTRYPOINT ["java","-jar","/awsLearn.jar"]