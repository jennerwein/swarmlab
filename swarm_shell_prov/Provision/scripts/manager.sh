echo initManager Arguments: $*
if [ ! -d "/vagrant/.vagrant/swarm-token" ]; then
echo Add Manager
  mkdir /vagrant/.vagrant/swarm-token
  chmod 777 /vagrant/.vagrant/swarm-token
  swarm_manager_ip=$2
  echo $swarm_manager_ip > /vagrant/.vagrant/swarm-manager-ip
  docker swarm init --listen-addr $swarm_manager_ip:2377 --advertise-addr $swarm_manager_ip:2377
  docker swarm join-token -q manager > /vagrant/.vagrant/swarm-token/manager
  docker swarm join-token -q worker > /vagrant/.vagrant/swarm-token/worker
else
echo Add Worker
  docker swarm join \
    --token `cat /vagrant/.vagrant/swarm-token/manager` \
    `cat /vagrant/.vagrant/swarm-manager-ip`:2377
fi