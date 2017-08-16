FROM openjdk:8-jdk-alpine
MAINTAINER JetQin "jq@gmail.com"
COPY target/eureka-server.jar  app.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]