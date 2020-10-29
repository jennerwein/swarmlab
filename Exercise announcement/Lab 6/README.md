# Practice sheet 6

Without a tool like Vagrant, building a Cluster will take a long time and is sometimes complex. <br>
In this exercise you will build a complete environment with **Docker-Swarm** and try to install useful applications on the cluster

In GitHub Repository, you can find under Basics a getting started for each technology with some basic examples and the most used Commands:
[Link to Basics](https://github.com/jennerwein/swarmlab/tree/master/basics)

To get an idea about the logic used to write the Scripts/Playbooks/Roles used in this project, feel free to check the project repository: 
[Project repository](https://github.com/jennerwein/swarmlab)

The objectives of the Lab:

- [x] Create a Cluster with Vagrant (minimum two machines)
- [x] Install Docker on each machine and find out the possible methods to do the task (Shell-scripts/Ansible)
- [x] Discover Docker-Swarm and initialise it 
- [x] Install Portainer

## Exercise 1:

<sub>_[Keywords: Vagrantfile, Vagrantfile provisioning, Vagrantfile loops, Ansible Playbooks...]_</sub>

_To remind certain integrity errors, it is recommended to use the used Box in the project: **"ubuntu/bionic64"**)_

1. In this exercise we want to get in touch with the basics of Vagrant. 
Create a Vagrantfile to start two machines with **"ubuntu/bionic64"** Box, define a name for each host and a IP-Address.
[Here are some examples of Vagrantfiles for multi-machines using _for...in_ loop](https://www.vagrantup.com/docs/vagrantfile/tips)
With **vagrant up** the machines are started and ready to be provisioned.

2. Try to install Docker on the created machines. 

**[Hint]: To install Docker on the machines, **"Shell scripts"** and **"Ansible Playbooks"** could be used. Try out the scenarios and find the differences between the two methods and the limitations of each one**

Shell-Scripts | Ansible Playbooks
------------ | -------------
Try to install docker using shell scripts, to get started you can of course see our [GitHub Repository](https://github.com/jennerwein/swarmlab/tree/master/swarm_shell_prov) or the examples in the official documentation [Vagrant provisioning with Shell](https://www.vagrantup.com/docs/provisioning/shell) | You learned the basics of Ansible during Lab-2, you can find some basics under [SwarmLab Repository](https://github.com/jennerwein/swarmlab/tree/master/basics) or in the [official documentation](https://docs.ansible.com/ansible/latest/user_guide/intro_getting_started.html). Try to create a Playbook to install Docker on your Hosts

**[Hint]: Please use "ansible_local" for provisioning, which does not require any installation of Ansible in the target host**

## Exercise 2: 

<sub>_[Keywords: Docker-swarm, Workers, Managers ...]_</sub>

- Try to initialise Docker-Swarm and add Managers/Workers to the created cluster

We are going to modify the Vagrantfile from **Exercise1** and initialize **Docker-Swarm** on the **Manager**.
They are two types in Docker-swarm jargon: **Workers** and **Managers**. We will choose a Manager and initialize Docker-swarm there.
The **Manager** will control the other hosts added to the swarm (they could 
be added as Workers or Managers), to see the basic commands, please consult the [Basics in GitHub Repository](https://github.com/jennerwein/swarmlab/tree/master/basics)

Shell-Scripts | Ansible Playbooks
------------ | -------------
To get an idea about the scripts, please consult the [GitHub Repository](https://github.com/jennerwein/swarmlab/tree/master/swarm_shell_prov/provision): A) Create a script to initialize Docker-Swarm in your Manager <br> B) Create a script to add the other host as a second Manager or Worker (you choice) | A) Try to write a Playbook to initialize Docker-Swarm in the main Manager <br> B) Try to add the other hosts
 
**[Hint]: I recommend you to read the [Playbooks/Roles](https://github.com/jennerwein/swarmlab/tree/master/swarm_ansible_prov/provision) in GitHub and try to understand the logic behind it. There is of course no ideal solution for a problem, you can create a Playbook with other Algorithme and discuss it in the Lab.**

## Exercise 3: 

<sub>_[Keywords: Portainer]_</sub>

- Try to install some useful applications on the cluster

Your Swarm is now started, you have created a cluster, installed Docker on it and initialized Docker-Swarm, the three main objectives of the Lab have already been achieved.
The last objective is now to install **Portainer** in the Cluster.

_**Whats is Portainer**_: Is an Open-Source tool used to facilitate the management of containers: [Official Portainer Documentation](https://documentation.portainer.io/#about-portainer)

Shell-Scripts | Ansible Playbooks
------------ | -------------
Write a script that installs Portainer and use it in the Vagrantfile provisioning loop. Open Portainer in the browser to verify the installation | Write a playbook to install Portainer in one of cluster hosts, call Portainer in your browser to verify the installation.