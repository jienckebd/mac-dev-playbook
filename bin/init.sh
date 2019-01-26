#!/bin/bash

bin_path="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
dev_playbook_root="${HOME}/sys/project/mac-dev-playbook"

# Step 1: Set up sys dir structure.
mkdir -p "${HOME}/sys/project"
mkdir -p "${HOME}/sys/platform"
mkdir -p "${HOME}/sys/app"
mkdir -p "${HOME}/sys/tmp"
mkdir -p "${HOME}/sys/backup"
mkdir -p "${HOME}/sys/bin"
mkdir -p "${HOME}/sys/lib"
mkdir -p "${HOME}/sys/etc"

# Step 2: Install Git and xcode.
xcode-select --install

# Step 3: Configure Git.
git config --global user.name "Bryan Jiencke" && \
git config --global user.email "bryan.jiencke@gmail.com"

# Step 4: Set up SSH keys.
# @todo

# Step 5: Install pip and ansible.
sudo easy_install pip
sudo pip install ansible

# Step 5: Clone and set up mac-dev-playbook.
git clone git@github.com:jienckebd/mac-dev-playbook.git "${dev_playbook_root}"
cd "${dev_playbook_root}"
git remote add upstream https://github.com/geerlingguy/mac-dev-playbook.git
ansible-galaxy install -r "${dev_playbook_root}/requirements.yml"

# Step 6: Execute mac-dev-playbook provisioning.
ansible-playbook "${dev_playbook_root}/main.yml" -i inventory -K
