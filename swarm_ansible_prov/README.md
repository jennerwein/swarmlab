# Swarmlab with Ansible provisioning

## Build on Linux (Ubuntu)

 1. **VirtualBox installation**:

 ``` sudo apt install virtualbox ```

 2. **Vagrant installation (Version 2.2.6)**:

 ``` sudo apt update ```

``` curl -O https://releases.hashicorp.com/vagrant/2.2.6/vagrant_2.2.6_x86_64.deb ```

``` sudo apt install ./vagrant_2.2.6_x86_64.deb ```

3. **Verification**:

To verify that the installation was successful, check the version of each software:

Vagrant: 

``` vagrant --version ```

VirtualBox: 

``` vboxmanage --version ```

- Used Versions durant the tests:

Tool | Version
---------------- | -------------
Vagrant | 2.2.6
VirtualBox | 5.2

If the versions of installed softwares are showed, your are ready to build the swarm environement (on Ubuntu). You need just to go to the folder where your Vagrantfile is and run:

``` vagrant up ```

## Build on Windows 10

1. **VirtualBox installation**:
Please download and install Virtualbox **Version 6.1** from the following link:
[Link zur VirtualBox 6.1](https://www.virtualbox.org/)

2. **Vagrant installation**:
Please download and install Vagrant **Version 2.2.10** from the following link:
[Link zur Vagrant 2.2.10](https://www.vagrantup.com/downloads.html)

3. **Verification**:

To verify that the installation was successful, check the version of each software:

Vagrant:

``` vagrant --version ```

VirtualBox:

``` vboxmanage -version ```

- Used Versions durant the tests:

Tool | Version
---------------- | -------------
Vagrant | 2.2.10
VirtualBox | 6.1

If the versions of installed softwares are showed, your are ready to build the swarm environement (on Windows). You need just to go to the folder where your Vagrantfile is and run:

``` vagrant up ```

## Testing the Installation on Windows10/Ubuntu
Please open the installed tool **Visualizer** in a Browser of your choice: [http://192.168.60.100:8080](http://172.16.0.101:8080)

## Lab architecture

Element | Content
---------------- | -------------
provision | The main used playbook and all roles (docker, docker-swarm, general, portainer, visualizer)
config.yml | The default configuration of the Lab, to change the default configuration, please read the **Lab configuration** part or the comments in config file
Vagrantfile | File used to build the virtual machines (managers and workers) of the Lab

## Lab configuration

Configuration | Meaning | Default value
---------------- | ------------- | ----------------
VM_BOX | Boxe to be installed | ubuntu/bionic64 (last version of ubuntu bionic) [https://app.vagrantup.com/ubuntu/boxes/bionic64]
NUMBER_OF_MANAGERS | Desired number of managers | 1
NUMBER_OF_WORKERS| Desired number of workers | 1
MEMORY_MANAGER | Memory used for a manager | 768 (please consider the memory of your computer by changing this value)
MEMORY_WORKER | Memory used for a worker | 512 (please consider the memory of your computer by changing this value)
NUMBER_CPUS_MANAGER | Number of CPUs used for a manager | 2
NUMBER_CPUS_WORKER | Number of CPUs used for a worker | 2
MANAGER_WORKER_IPV4 | IP-Address of the lab (workers and managers) | 192.168.60.0/24 (please by changing this value, make sur that you give a valid IP-Address)

# Troubleshooting:

- Permission denied:
This means that you have to run the command with an administrator account. Please use **sudo** in Ubuntu. On Windows, try opening the command line **as an administrator**

- Make sur that Hyper-V in Windows is not enabled:
Installing VirtualBox on Windwos with enabled Hyper-V can cause Problems, for more information please visit this [link](https://www.vagrantup.com/docs/installation).
Run please the following command to disable Hyper-V in Windows 10:

``` Disable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-All ```

# Documentation

More detailed Information about the used technologies can be found in the following links:

-[Vagrant](https://www.vagrantup.com/docs)

-[Ansible](https://docs.ansible.com/)

-[Docker-swarm](https://docs.docker.com/engine/swarm/)
