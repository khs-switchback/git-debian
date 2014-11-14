#!/bin/bash

if [ -d "/var/settings/ssh" ]; then
    cp -Rs /var/settings/ssh ~/.ssh 
    ls ~/.ssh
fi

# Github deploy key
#echo "Host github.com\n\tStrictHostKeyChecking no\n" >> /root/.ssh/config
#echo "IdentityFile /var/settings/ssh/id_rsa" >> /root/.ssh/config
#echo "LogLevel ERROR" >> /root/.ssh/config
