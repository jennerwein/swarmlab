 docker swarm join \
    --token `cat  /vagrant/.vagrant/swarm-token/worker` \
    `cat /vagrant/.vagrant/swarm-manager-ip`:2377