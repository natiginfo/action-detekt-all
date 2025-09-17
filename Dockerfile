FROM openjdk:jre-slim

ADD https://github.com/detekt/detekt/releases/download/v2.0.0-alpha.0/detekt-cli-2.0.0-alpha.0-all.jar /usr/local/bin/detekt-cli-all.jar
RUN chmod +x /usr/local/bin/detekt-cli-all.jar
RUN cd $GITHUB_WORKSPACE

ENTRYPOINT ["java","-jar","/usr/local/bin/detekt-cli-all.jar"]
