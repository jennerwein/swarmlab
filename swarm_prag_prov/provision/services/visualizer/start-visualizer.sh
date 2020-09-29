#!/bin/sh

GELB_AN="\033[30m\033[43m"
GELB_AUS="\033[0m"

cd /home/vagrant/provision/services/visualizer
docker stack deploy --compose-file=visualizer.yml viz

echo "$GELB_AN Visualizer service started on http://172.16.0.101:8050$GELB_AUS"

