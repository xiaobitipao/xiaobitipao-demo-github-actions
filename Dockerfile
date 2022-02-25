FROM openjdk:17-jdk

WORKDIR /opt/app

COPY ./target/xiaobitipao-demo-github-actions-0.0.2-SNAPSHOT.jar xiaobitipao-demo-github-actions-0.0.2-SNAPSHOT.jar

# https://docs.spring.io/spring-boot/docs/current/reference/html/deployment.html
RUN jar -xf xiaobitipao-demo-github-actions-0.0.2-SNAPSHOT.jar

EXPOSE 8080

#ENTRYPOINT ["java", "-jar", "xiaobitipao-demo-github-actions-0.0.2-SNAPSHOT.jar"]
ENTRYPOINT ["java", "org.springframework.boot.loader.JarLauncher"]
