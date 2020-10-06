## Install Vagrant in Ubuntu:

```
sudo apt-get install virtualbox
sudo apt-get install Vagrant
vagrant -v
```

### Vagrant Basics:

```config.vm.box: used Box

config.vm.provider: Hypervisor (VMware, Virtualbox, ...)

config.vm.network: Network configuration (IP-Address, ...)

config.vm.synced_folder: Create synced file

config.vm.provision: Host provisioning (with Ansible for example)
```

## Initialization of a Vagrant file (Vagrantfile):

``` vagrant init <Name des Betriebssystems> ```

*Example:* 

``` vagrant init ubuntu/trusty64 ```

## Start Vagrantfile: 

``` vagrant up ```

## Pause and reset Vagrant:

 ``` vagrant suspend ```

 ``` vagrant resume ```

## Destroy the created VMs:

``` vagrant destroy ```

## Show the names and status of the machines: 

``` vagrant status ```

## Check the Vagrant syntax:

``` vagrant validate ```