FROM openjdk:jre-slim

ADD https://github.com/detekt/detekt/releases/download/v1.15.0-RC2/detekt /usr/local/bin/detekt
RUN chmod +x /usr/local/bin/detekt

ADD https://github.com/detekt/detekt/releases/download/v1.15.0-RC2/detekt-cli-1.15.0-RC2-all.jar /usr/local/lib/detekt/detekt-cli-all.jar

RUN cd $GITHUB_WORKSPACE

ENTRYPOINT ["detekt"]
