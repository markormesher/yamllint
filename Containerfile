FROM docker.io/debian:13.5@sha256:d07d1b51c39f51188e60be9b64e6bf769fa94e187f092bc32b91305cfa34ba5a

RUN apt update \
  && apt install -y --no-install-recommends yamllint git \
  && apt clean cache

COPY ./config.yml /app/

LABEL image.name=markormesher/yamllint
LABEL image.registry=ghcr.io
LABEL org.opencontainers.image.description=""
LABEL org.opencontainers.image.documentation=""
LABEL org.opencontainers.image.title="yamllint"
LABEL org.opencontainers.image.url=""
LABEL org.opencontainers.image.vendor=""
LABEL org.opencontainers.image.version=""
