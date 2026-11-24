FROM docker.io/debian:13.8@sha256:3cda3ca472ce45507a5109c6a3907093e24d9ae67d55954c9a07a45665dafba2

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
