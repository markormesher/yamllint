FROM docker.io/debian:13.7@sha256:9c6e381421d0f48d1b8133e573f33c185ee16cbf505eda9c4a8a4791b25ea8a6

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
