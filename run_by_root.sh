#!/bin/bash
echo "Start..."

echo "Config sudo..."
chmod u+w /etc/sudoers
echo "" >> /etc/sudoers
echo "#no password for admin user" >> /etc/sudoers
echo "admin ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
chmod u-w /etc/sudoers

echo "Create user.."
yes | adduser --quiet --disabled-password admin > /dev/null
yes | adduser --quiet --disabled-password docker > /dev/null
