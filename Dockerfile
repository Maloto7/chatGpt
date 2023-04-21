#use a java image
FROM openjdk:8-jdk-alpine
#copy the jar file to the working directory
COPY target/devops-test.jar devops-test.jar
#run the jar file

#create the working directory
WORKDIR /app
#copy the jar file to the working directory
COPY target/devops-test.jar devops-test.jar
#run the jar file
ENTRYPOINT ["java","-jar","/app/devops-test.jar"]
