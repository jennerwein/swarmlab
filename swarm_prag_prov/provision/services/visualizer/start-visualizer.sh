#!/bin/sh

YELLOW_ON="\033[30m\033[43m"
YELLOW_OFF="\033[0m"

cd /home/vagrant/provision/services/visualizer
docker stack deploy --compose-file=visualizer.yml viz

echo "$YELLOW_ON Visualizer service started on http://172.16.0.101:8050$YELLOW_OFF"

