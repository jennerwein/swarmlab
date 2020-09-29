#!/bin/sh

GELB_AN="\033[30m\033[43m"
GELB_AUS="\033[0m"
container_starten="false"

# Portainer starten
/home/vagrant/services/portainer/start-portainer.sh
echo "$GELB_AN Portainer started $GELB_AUS"

# Visualizer starten
/home/vagrant/services/visualizer/start-visualizer.sh
echo "$GELB_AN Visualizer started $GELB_AUS"

