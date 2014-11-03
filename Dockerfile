FROM switchback/debian

RUN apt-get update && \
    apt-get install -y git && \
    rm -rf /var/lib/apt/lists/*

VOLUME /var/workspace
VOLUME /var/settings

# Setting up SSH key
RUN mkdir -p /root/.ssh

# Github deploy ke
RUN echo "Host github.com\n\tStrictHostKeyChecking no\n" >> /root/.ssh/config
RUN echo "IdentityFile /var/settings/id_rsa" >> /root/.ssh/config
