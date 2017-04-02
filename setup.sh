#!/bin/bash

# Copy bash aliases to root
cp bash_aliases ~/.bash_aliases

# Configure git
git config --global user.name "Stan Chan"
git config --global user.email stanchanpsu@outlook.com
git config --global credential.helper cache
git config --global credential.helper "cache --timeout=360000"
git config --global push.default matching

# Update packages
apt-get update

# Re-source .bashrc
soure ~/.bashrc
