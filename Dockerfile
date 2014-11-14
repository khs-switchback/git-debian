FROM switchback/debian

USER root

RUN apt-get update && \
    apt-get install -y git && \
    rm -rf /var/lib/apt/lists/*

# Setting up SSH key
RUN mkdir -p /root/.ssh && mkdir -p /var/workspace && mkdir -p /var/settings
RUN chmod 0700 /root/.ssh

VOLUME /var/workspace
VOLUME /var/settings

ENV REPO null
ENV BRANCH master

WORKDIR /var/workspace

# add script to run
ADD *.sh /usr/local/bin/

CMD /bin/bash /usr/local/bin/run.sh
