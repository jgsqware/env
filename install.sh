#!/bin/bash
setupEnv() {
  echo 'Copy SSH key from Enpass BEFORE CONTINUING'
  echo 'Press Enter to continue'
  read secondyn </dev/tty
  
  chmod 400 ~/.ssh/id_rsa
  
  echo 'Clone jgsqware/env'
  git clone git@github.com:jgsqware/env.git ~/workspace/github/jgsqware/env
  
  echo 'Go to ansible folder and run ansible: '
  echo '$ cd $WORKSPACE/github/jgsqware/env/ansible'
  echo '$ ansible-playbook -K -i hosts playbook.yml'
}

ubuntuInstall() {
  echo "Ubuntu flavor installation"
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
  
  setupEnv
}

archInstall() {
  echo "Arch flavor installation"

  echo 'Install Enpass'
  yaourt -S --noconfirm aur/enpass-bin

  echo 'Install ansible'
  pacman -S --noconfirm enpass

  setupEnv
}

DISTRIB_ID=$(cat /etc/*-release | grep -w ID | awk -F "=" '{print $2}' | sed 's/"//g') 

case "$DISTRIB_ID" in
"ubuntu" | "debian")
    ubuntuInstall
    ;;
"antergos")
    archInstall
    ;;
*)
    echo "Distribution not supported: $DISTRIB_ID"
    ;;
esac


