#!/bin/bash

# setup defaults
if [ -d "/var/default/ssh" ]; then
	if [ -e "/var/default/ssh/config" ]; then
		cat /var/default/ssh/config >> $HOME/.ssh/config
	fi
	if [ -e "/var/default/ssh/id_rsa" ]; then
		cat /var/default/ssh/id_rsa >> $HOME/.ssh/id_rsa
	fi
fi

# setup project
if [ -d "/var/project/ssh" ]; then
	if [ -e "/var/project/ssh/config" ]; then
		rm -f $HOME/.ssh/config
		cat /var/project/ssh/config >> $HOME/.ssh/config
	fi
	if [ -e "/var/project/ssh/id_rsa" ]; then
		rm -f $HOME/.ssh/id_rsa
		cat /var/project/ssh/id_rsa >> $HOME/.ssh/id_rsa
	fi
fi

chmod 600 $HOME/.ssh/*