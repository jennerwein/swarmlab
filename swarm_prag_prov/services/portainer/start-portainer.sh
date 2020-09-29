#!/bin/sh

cd /home/vagrant/services/portainer

# Install Portainer https://www.portainer.io/installation/ 
curl -L https://downloads.portainer.io/portainer-agent-stack.yml -o portainer-agent-stack.yml
docker stack deploy --compose-file=portainer-agent-stack.yml portainer
