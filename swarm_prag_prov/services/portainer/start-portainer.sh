#!/bin/sh

cd /home/vagrant/services/portainer
docker stack deploy --compose-file=portainer-agent-stack.yml portainer

# Start von Portainer mit run
# docker run	\
#    -d=true  \
#    -p 9000:9000 \
#    -v /var/run/docker.sock:/var/run/docker.sock \
#    -v /opt/portainer:/data \
#    --name Portainer \
#    --restart=always \
#    portainer/portainer:latest