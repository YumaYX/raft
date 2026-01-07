#!/usr/bin/env bash

apt-get update
apt-get install -y ansible

rm -rf /tmp/raft
git clone https://github.com/YumaYX/raft /tmp/raft && cd /tmp/raft && ansible-playbook -i localhost, -c local build.yaml

