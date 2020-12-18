#!/bin/sh

apt-get install apt-transport-https -y \
ca-certificates -y \
curl -y \
gnupg-agent -y \
software-properties-common -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get update -y 
apt-get install -y docker-ce=5:20.10.0~3-0~ubuntu-bionic docker-ce-cli=5:20.10.0~3-0~ubuntu-bionic containerd.io=1.4.3-1
systemctl start docker
systemctl enable docker