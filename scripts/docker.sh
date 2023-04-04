#!/bin/bash
curl https://get.docker.com/ | bash
apt install docker-compose
sudo groupadd docker
sudo usermod -aG docker $USER

# Enable autocomplete
sudo apt-get install bash-completion -y
curl https://raw.githubusercontent.com/docker/docker-ce/master/components/cli/contrib/completion/bash/docker -o /etc/bash_completion.d/docker.sh
