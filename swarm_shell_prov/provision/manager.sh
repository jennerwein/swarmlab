##### Check if its the main manager (the second arguments) 
if [ $2 = "manager1" ]; then
echo Initialize Swarm
  # Delete the swarm token file
  if [ -d "/vagrant/.vagrant/swarm-token" ] ; then
    echo Delete the existing file
    rm -rf "/vagrant/.vagrant/swarm-token"
  fi
  # Create swarm-token file 
  mkdir /vagrant/.vagrant/swarm-token
  # Give the read and write privileges 
  chmod 777 /vagrant/.vagrant/swarm-token
  # Get the ip-address from the passed arguments
  swarm_manager_ip=$1
  # Write the IP-Address in swarm-manager-ip file
  echo $swarm_manager_ip > /vagrant/.vagrant/swarm-manager-ip
  # Initialise Swarm
  docker swarm init --advertise-addr $swarm_manager_ip:2377 --listen-addr $swarm_manager_ip:2377
  # Capture manager token and write it in manager file  
  docker swarm join-token -q manager > /vagrant/.vagrant/swarm-token/manager
  # Capture worker token and write it in worker file
  docker swarm join-token -q worker > /vagrant/.vagrant/swarm-token/worker
##### If its not the main manager
else
echo Add other Managers to the swarm
  docker swarm join \
    --token `cat /vagrant/.vagrant/swarm-token/manager` \
    `cat /vagrant/.vagrant/swarm-manager-ip`:2377
fi
