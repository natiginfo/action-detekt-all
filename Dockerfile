FROM openjdk:jre-slim

ADD https://github.com/detekt/detekt/releases/download/v1.21.0-RC2/detekt-cli-1.21.0-RC2-all.jar /usr/local/bin/detekt-cli-all.jar
RUN chmod +x /usr/local/bin/detekt-cli-all.jar
RUN cd $GITHUB_WORKSPACE

ENTRYPOINT ["java","-jar","/usr/local/bin/detekt-cli-all.jar"]
