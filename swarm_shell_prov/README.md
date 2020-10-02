# Swarmlab with Shell scripts

## Build on Linux (Ubuntu)

 1. **VirtualBox installation**:

 ``` sudo apt install virtualbox ```

 2. **Vagrant installation (Version 2.2.6)**:

 ``` sudo apt update ```

``` curl -O https://releases.hashicorp.com/vagrant/2.2.6/vagrant_2.2.6_x86_64.deb ```

``` sudo apt install ./vagrant_2.2.6_x86_64.deb ```

3. **Verification**:

To verify that the installation was successful, check the version of each software:

Vagrant: ``` vagrant --version ```
VirtualBox: ``` vboxmanage --version ```

- Used Versions durant the tests:

Tool | Version
---------------- | -------------
Vagrant | 2.2.6
VirtualBox | 5.2

If the versions of installed softwares are showed, your are ready to build the swarm environement (on Ubuntu). You need just to go to file where your Vagrantfile is and run:

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

If the versions of installed softwares are showed, your are ready to build the swarm environement (on Windows). You need just to go to file where your Vagrantfile is and run:

``` vagrant up ```

## Lab architecture

Element | Content
---------------- | -------------
provision | The scripts used to provision the machines
config.yml | Contain the default configurations of the Lab, to change the default configuration, please read the **Lab configurations** part or the comments in the config file
Vagrantfile | File used to build the needed virtual machines

## Lab configurations

Configuration | Meaning | Default value
---------------- | ------------- | ----------------
VM_BOX | The Boxe installed on the build VMs | ubuntu/bionic64 (last version of ubuntu bionic) [https://app.vagrantup.com/ubuntu/boxes/bionic64]
UPDATE_MACHINES | Enable updates | true
NUMBER_OF_MANAGERS | Desired number of managers | 1
NUMBER_OF_WORKERS| Desired number of workers | 1
MEMORY_MANAGER | Memory used for a manager | 768 (please consider the memory of your computer by changing this value)
MEMORY_WORKER | Memory used for a worker | 512 (please consider the memory of your computer by changing this value)
NUMBER_CPUS_MANAGER | Number of CPUs used for a manager | 2
NUMBER_CPUS_WORKER | Number of CPUs used for a worker | 2
VAGRANTFILE_API_VERSION | Vagrant version | 2

# Troubleshooting:

- Permission denied:
That mean that you need to execute the command with administrator account, please use **sudo** in Ubuntu. In Windows try to open the command line **as administrator**

- Make sur that Hyper-V in Windows is not enabled:
Installing VirtualBox on Windwos with enabled Hyper-V can cause Problems, for more information please visit this [link](https://www.vagrantup.com/docs/installation)
To disabled Hyper-V in Windows 10, please execute the folowing command:

``` Disable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-All ```

# Documentation

More detailed Information about the used technologies can be found in the following links:

-[Vagrant](https://www.vagrantup.com/docs)

-[Docker-swarm](https://docs.docker.com/engine/swarm/)