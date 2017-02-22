#!/bin/bash

# Install Ansible and its dependencies before executing this role.

if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

dnf install -y python2-dnf libselinux-python ansible
echo "localhost" >> /etc/ansible/hosts
