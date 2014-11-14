#!/bin/bash

if [ -d "/var/settings/ssh" ]; then
    cp -r /var/settings/ssh/* /root/.ssh/
    chmod 0700 -R /root/.ssh
fi
