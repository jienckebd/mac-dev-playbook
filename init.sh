#!/bin/bash

xcode-select --install

git config --global user.name "Bryan Jiencke" && \
git config --global user.email "bryan.jiencke@gmail.com"

mkdir -p "${HOME}/sys/project"
mkdir -p "${HOME}/sys/platform"
mkdir -p "${HOME}/sys/app"
mkdir -p "${HOME}/sys/tmp"
mkdir -p "${HOME}/sys/backup"
mkdir -p "${HOME}/sys/bin"
mkdir -p "${HOME}/sys/lib"
mkdir -p "${HOME}/sys/etc"

dev_playbook_root="${HOME}/sys/project/mac-dev-playbook"

git clone git@github.com:jienckebd/mac-dev-playbook.git "${dev_playbook_root}"
cd "${dev_playbook_root}"
git remote add upstream https://github.com/geerlingguy/mac-dev-playbook.git

sudo easy_install pip
sudo pip install ansible

ansible-galaxy install -r requirements.yml
ansible-playbook main.yml -i inventory -K
