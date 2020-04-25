# Container image
FROM alpine

RUN apk --no-cache --update add git bash openjdk11 \
    && rm -rf /var/cache/apk/*

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN cd $GITHUB_WORKSPACE

# Copies detekt-cli files from action repository to the filesystem path `/` of the container
COPY detekt-cli-1.8.0/bin /detekt-bin
COPY detekt-cli-1.8.0/lib /detekt-lib
RUN chmod a+x ./detekt-bin/detekt-cli

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT [ "/entrypoint.sh"]
