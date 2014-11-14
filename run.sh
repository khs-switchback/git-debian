#!/bin/bash

if [ -d "/var/settings/ssh" ]; then
    cp -r /var/settings/ssh/* ~/.ssh/
    ls ~/.ssh
fi
