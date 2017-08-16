#!/bin/bash
echo 'Setup Enpass repository'
sudo sh -c 'echo "deb http://repo.sinew.in/ stable main" >> /etc/apt/sources.list.d/enpass.list'
wget -O - https://dl.sinew.in/keys/enpass-linux.key | sudo apt-key add -

echo 'Setup Ansible repository'
sudo apt-add-repository ppa:ansible/ansible


echo 'Prerequisite installation'
sudo apt-get update
sudo apt-get install --allow-unauthenticated -y software-properties-common \
  git \
  enpass \
  ansible 

echo 'Copy SSH key from Enpass BEFORE CONTINUING'
echo 'Press Enter to continue'
read secondyn </dev/tty

chmod 400 ~/.ssh/id_rsa

echo 'Clone jgsqware/env'
git clone git@github.com:jgsqware/env.git ~/workspace/github/jgsqware/env
