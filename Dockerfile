# Container image
FROM alpine

RUN apk --no-cache --update add git bash openjdk11 \
    && rm -rf /var/cache/apk/*

# Copies detekt-cli files from action repository to the filesystem path `/` of the container
COPY detekt-cli-1.8.0/bin /bin
COPY detekt-cli-1.8.0/lib /lib
RUN chmod a+x ./bin/detekt-cli

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT [ "/bin/detekt-cli"]
