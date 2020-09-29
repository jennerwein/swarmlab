#!/bin/bash

sleep 5; echo "Pause, damit sich Netz einpendeln kann."
docker node ls # Überprüfen, ob schon in einem Schwarm 

if [ $? -ne 0 ] # Falls vorhergehendes Kommando kein Erfolg, .d.h. nicht im Schwarm
then
    bash /vagrant/provision/.join-manager-cmd.txt
    echo "In den Schwarm eingetreten!"
fi