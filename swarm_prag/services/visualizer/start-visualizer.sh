#!/bin/sh

cd /home/vagrant/services/visualizer
docker stack deploy --compose-file=visualizer.yml viz
