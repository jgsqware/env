#!/bin/bash
echo 'Setup Enpass repository'
echo 'deb http://repo.sinew.in/ stable main' | sudo tee --append /etc/apt/sources.list.d/enpass.list > /dev/null
wget -O - https://dl.sinew.in/keys/enpass-linux.key | apt-key add -

echo 'Setup Ansible repository'
sudo apt-add-repository ppa:ansible/ansible


echo 'Prerequisite installation'
sudo apt-get update
sudo apt-get install --allow-unauthenticated -y software-properties-common \
  git \
  enpass \
  ansible 

echo 'Copy SSH key from Enpass BEFORE CONTINUING'
read -p "Press [Enter] key to continue..."

echo 'Clone jgsqware/env'
git clone git@github.com:jgsqware/env.git ~/workspace/github/jgsqware/env
