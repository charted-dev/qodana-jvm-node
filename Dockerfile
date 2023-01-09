ARG QODANA_VERSION

FROM jetbrains/qodana-jvm-community:${QODANA_VERSION}

COPY --from=ghcr.io/auguwu/coder-images/node:latest /opt/nodejs /opt/nodejs
ENV PATH=$PATH:/opt/nodejs/bin
