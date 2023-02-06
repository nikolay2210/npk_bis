#!/bin/bash

apt-get update
apt-get install -y zabbix-agent \
    install stress 
mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
apt-get update
chmod a+r /etc/apt/keyrings/docker.gpg
apt-get update
apt-get install -y docker-ce \
    docker-ce-cli \
    containerd.io \
    docker-compose-plugin \
    docker-compose
 