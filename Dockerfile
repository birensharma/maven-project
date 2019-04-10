FROM openjdk
FROM ubuntu
RUN apt-get update && apt-get install -y maven
COPY pom.xml /usr/local/maven-project/pom.xml
COPY src /usr/local/maven-project/src
WORKDIR /usr/local/maven-project
RUN mvn package
CMD ["java","-cp","target/maven-project-1.0-SNAPSHOT.jar","com.capstone.app.App"] 
CMD ["java","test"] 