FROM docker.io/debian:13.7@sha256:2dc419c6d7fe3dad0a2f9fd469c34cc90b0f9ba642d8fde837fe3d7d34a0e7f1

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
