FROM switchback/debian

RUN apt-get update && \
    apt-get install -y git && \
    rm -rf /var/lib/apt/lists/*

# Setting up SSH key
RUN mkdir -p /root/.ssh && mkdir -p /var/workspace && mkdir -p /var/settings

VOLUME /var/workspace
VOLUME /var/settings

ENV REPO null
ENV BRANCH master

WORKDIR /var/workspace

# Github deploy ke
RUN echo "Host github.com\n\tStrictHostKeyChecking no\n" >> /root/.ssh/config
RUN echo "IdentityFile /var/settings/id_rsa" >> /root/.ssh/config
