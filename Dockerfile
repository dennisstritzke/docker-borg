FROM debian:13

LABEL org.opencontainers.image.source=https://github.com/dennisstritzke/docker-borg

ARG BORG_VERSION=

RUN apt-get update && \
    apt-get install -y borgbackup${BORG_VERSION:+=${BORG_VERSION}} && \
    apt-get clean

ENTRYPOINT ["/usr/bin/borg"]
CMD ["help"]