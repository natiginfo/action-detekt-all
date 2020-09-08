FROM openjdk:jre-slim

ADD https://github.com/detekt/detekt/releases/download/v1.13.0/detekt /usr/local/bin/detekt
RUN chmod +x /usr/local/bin/detekt
RUN cd $GITHUB_WORKSPACE

ENTRYPOINT ["detekt"]
