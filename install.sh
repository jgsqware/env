#!/bin/bash
echo 'Setup Enpass repository'
sudo -i
echo "deb http://repo.sinew.in/ stable main" > \
  /etc/apt/sources.list.d/enpass.list
wget -O - https://dl.sinew.in/keys/enpass-linux.key | apt-key add -

echo 'Setup Ansible repository'
sudo apt-add-repository ppa:ansible/ansible


echo 'Prerequisite installation'
sudo apt-get update
sudo apt-get install -y \
  software-properties-common \
  git \
  enpass \
  ansible 

echo 'Copy SSH key from Enpass'
read -n 1 -s -r -p "Press any key to continue when it's done"

echo 'Clone jgsqware/env'
git clone git@github.com:jgsqware/env.git ~/workspace/github/jgsqware/env
