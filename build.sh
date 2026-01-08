#!/usr/bin/env bash

if [ -r /etc/os-release ]; then
  . /etc/os-release
  if [ "$ID" != "ubuntu" ]; then
    echo "This script supports Ubuntu only."
    exit 1
  fi
else
  echo "Cannot detect OS."
  exit 1
fi

#apt-get update
apt-get install -y ansible

rm -rf /tmp/raft
git clone https://github.com/YumaYX/raft /tmp/raft && cd /tmp/raft && ansible-playbook -i localhost, -c local build.yaml

