FROM openjdk:17-jdk

WORKDIR /opt/app

COPY ./target/xiaobitipao-demo-github-actions-0.0.2.jar xiaobitipao-demo-github-actions-0.0.2.jar

# https://docs.spring.io/spring-boot/docs/current/reference/html/deployment.html
RUN jar -xf xiaobitipao-demo-github-actions-0.0.2.jar

EXPOSE 8080

#ENTRYPOINT ["java", "-jar", "xiaobitipao-demo-github-actions-0.0.2.jar"]
ENTRYPOINT ["java", "org.springframework.boot.loader.JarLauncher"]
