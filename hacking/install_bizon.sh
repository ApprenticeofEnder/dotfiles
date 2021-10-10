#!/bin/bash

apt-get update
apt-get install -y python3 \
                python3-pip \
                python3-dev \
                git \
                libssl-dev \
                libffi-dev \
                build-essential \
                php \
                nodejs \
                npm \
                ghidra \
                curl \
                gpg \
                software-properties-common \
                apt-transport-https \
                docker.io \
                g++ \
                gdb \

curl -sSL https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" | tee /etc/apt/sources.list.d/vscode.list
apt update
apt install -y code
systemctl enable docker --now
usermod -aG docker $USER