#!/bin/bash

sudo dnf -y update
sudo dnf install dnf-plugins-core -y
sudo dnf install \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf update --refresh
sudo dnf install akmod-nvidia
sudo dnf install xorg-x11-drv-nvidia-cuda
rpm --import https://packages.microsoft.com/keys/microsoft.asc
cat <<EOF | sudo tee /etc/yum.repos.d/vscode.repo
[code]
name=Visual Studio Code
baseurl=https://packages.microsoft.com/yumrepos/vscode
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc
EOF
sudo dnf check-update
sudo dnf install code
sudo dnf install python3-pip npm plantuml
sudo dnf group install "Xfce Desktop"
sudo dnf install switchdesk switchdesk-gui
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh