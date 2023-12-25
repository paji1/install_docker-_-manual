#!/bin/bash

sudo apt-get update
sudo dpkg -i containerd.io_1.6.16-1_amd64.deb
echo $?
sudo dpkg -i docker-ce_23.0.0-1~debian.12~bookworm_amd64.deb
echo $?
sudo dpkg -i docker-ce-cli_23.0.0-1~debian.12~bookworm_amd64.deb
sudo dpkg -i docker-buildx-plugin_0.10.2-1~debian.12~bookworm_amd64.deb
sudo dpkg -i docker-compose-plugin_2.15.1-1~debian.12~bookworm_amd64.deb
sudo service docker start


sudo curl -SL https://github.com/docker/compose/releases/download/v2.23.3/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
sudo chmod 777 /usr/local/bin/docker-compose