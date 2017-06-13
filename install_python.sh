#! /bin/bash

# Install Python3.6
apt-get update
apt-get install python3.6 -y

# Link Python3.6 to python3 command
rm /usr/bin/python3
ln -s /usr/bin/python3.6 /usr/bin/python3

# Install and upgrade pip3
apt-get install python3-pip -y
pip3 install --upgrade pip

# Install Virtualenv
pip3 install virtualenv
pip3 install virtualenvwrapper

# Echo configurations
echo ""
echo "export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3.6" >> ~/.bashrc
echo "alias pip='pip3'" >> ~/.bash_aliases

source ~/.bashrc

echo "export WORKON_HOME=~/Envs" >> ~/.bashrc
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.bashrc