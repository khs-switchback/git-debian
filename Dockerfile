FROM switchback/debian

RUN apt-get update && \
    apt-get install -y git && \
    rm -rf /var/lib/apt/lists/*

VOLUME /var/workspace
VOLUME /var/settings
