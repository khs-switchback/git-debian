#!/bin/bash

if [ -d "/var/settings/ssh" ]; then
    cat /var/settings/ssh/config >> $HOME/.ssh/config
fi
