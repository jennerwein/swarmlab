# The scripts can be found in the following link: 
# https://docs.docker.com/engine/install/ubuntu/
sudo apt-get install -y \
## Install the packages allowing apt to use a repository over HTTPs
# apt-transport-https: enables the use of repositories that are accessed via the HTTP Secure protocol (HTTPS)
    apt-transport-https \
# gnupg-agent: GNU privacy guard, allows you to import the repository public key
    gnupg-agent \
    curl \
# Install software-properties-common because it incluce add-apt-repository
    software-properties-common > /dev/null
# Get Docker official GPG key and add package key 
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# To disable the standard output we use: /dev/null
sudo apt-key fingerprint 0EBFCD88 > /dev/null
## Add new repository with add-apt-repository (script that allows adding APT repository):
# 1. deb: type of the archive
# 2. [arch=amd64]: for x86_64 and 64 bit Processor 
# 3. https://download.docker.com/linux/ubuntu: repository URL
# 4. lsb_release: print Ubuntu codename (Example: bionic will be printed if our system is:  Ubuntu version 18.04)
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable" > /dev/null
sudo apt-get update > /dev/null
# Install the latest version of Docker Engine
sudo apt-get install -y docker-ce
# Add docker group if not exists
sudo groupadd docker
# Add vagrant to docker group (so we can directly execute docker commands without sudo)
sudo usermod -aG docker vagrant