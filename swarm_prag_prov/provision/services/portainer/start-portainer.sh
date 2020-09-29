#!/bin/sh

YELLOW_ON="\033[30m\033[43m"
YELLOW_OFF="\033[0m"

cd /home/vagrant/provisioning/services/portainer

# Install Portainer https://www.portainer.io/installation/ 
curl -L https://downloads.portainer.io/portainer-agent-stack.yml -o portainer-agent-stack.yml
docker stack deploy --compose-file=portainer-agent-stack.yml portainer

echo "$YELLOW_ON Portainer service started on http://172.16.0.101:9000$YELLOW_OFF"
