ARG BUILD_FROM=ghcr.io/hassio-addons/base:20.0.1

# hadolint ignore=DL3006
FROM ${BUILD_FROM}

# Add ESP32 related tools
RUN \
  apk add --no-cache \
    python3 \
    py3-pip \
    && pip3 install esp-idf-monitor esptool

# Add nginx and create the run folder for nginx.
RUN \
  apk --no-cache add \
    nano \
    nginx \
    openssh \
  \
  && mkdir -p /run/nginx

# Copy root filesystem
COPY rootfs /

# Copy our conf into the nginx http.d folder.
COPY ingress.conf /etc/nginx/http.d/default.conf

# Launch nginx with info options.
CMD [ "nginx","-g","daemon off;error_log /dev/stdout info;" ]

# Build arguments
ARG BUILD_VERSION
ARG BUILD_ARCH
ARG BUILD_DATE
ARG BUILD_DESCRIPTION
ARG BUILD_NAME
ARG BUILD_REF
ARG BUILD_REPOSITORY

# Labels
LABEL \
    io.hass.name="${BUILD_NAME}" \
    io.hass.description="${BUILD_DESCRIPTION}" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="Focusware Development <no@email.com>" \
    org.opencontainers.image.title="${BUILD_NAME}" \
    org.opencontainers.image.description="${BUILD_DESCRIPTION}" \
    org.opencontainers.image.vendor="Home Assistant Community Add-ons" \
    org.opencontainers.image.authors="Focusware Development <no@email.com>" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.url="https://addons.community" \
    org.opencontainers.image.source="https://github.com/${BUILD_REPOSITORY}" \
    org.opencontainers.image.documentation="https://github.com/${BUILD_REPOSITORY}/blob/main/README.md" \
    org.opencontainers.image.created=${BUILD_DATE} \
    org.opencontainers.image.revision=${BUILD_REF} \
    org.opencontainers.image.version=${BUILD_VERSION}
