#!/bin/bash

sudo sysadminctl -addUser docker -UID 1000 &&
sudo dseditgroup -o edit -a docker -t user admin &&
sudo dseditgroup -o edit -a docker -t user wheel
