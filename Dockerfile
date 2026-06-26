# syntax=docker/dockerfile:1
FROM ghcr.io/opentofu/opentofu:minimal AS tofu

FROM mcr.microsoft.com/devcontainers/base:ubuntu26.04
USER root
# Copy the tofu binary
COPY --from=tofu /usr/local/bin/tofu /usr/local/bin/tofu

# Install dependencies
RUN apt-get -y update && apt-get install -y --no-install-recommends \
    curl \
    git \
    jq \
    wget \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace
