# The scriptes can be found in the following link: 
# https://docs.docker.com/engine/install/ubuntu/
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common > /dev/null
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88 > /dev/null
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable" > /dev/null
sudo apt-get update > /dev/null
sudo apt-get install -y docker-ce > /dev/null

sudo groupadd docker

sudo usermod -aG docker vagrant