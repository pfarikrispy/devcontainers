# trunk-ignore-all(checkov/CKV_DOCKER_2)
# syntax=docker/dockerfile:1
FROM ghcr.io/opentofu/opentofu:1.7.2-minimal AS tofu

FROM mcr.microsoft.com/devcontainers/base:ubuntu26.04
USER root
# Copy the tofu binary
COPY --from=tofu /usr/local/bin/tofu /usr/local/bin/tofu

USER vscode
WORKDIR /workspace
