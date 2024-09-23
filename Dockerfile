FROM openjdk:17-alpine
WORKDIR /opt/app
COPY ./target/*.jar /opt/app/
EXPOSE 8080
CMD ["java","-jar","spring-app-1.0.jar"]