#!/bin/bash
sudo apt update
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install -y docker-ce
git clone https://github.com/Brownr151/dockerfile 
cd dockerfile/
sudo docker build -t abc .
sudo docker run -d -it -p 8080:80 abc