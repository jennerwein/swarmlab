# Lab 6

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

## Exercise 1: _[Keywords: Vagrantfile, Vagrantfile provisioning, Vagrantfile loops, Ansible Playbooks...]_

_To remind certain integrity errors, it is recommended to use the used Box in the project: **"ubuntu/bionic64"**)_

1. Create a Vagrantfile to start two machines with **"ubuntu/bionic64"** Box, define a name for each host and a IP-Address.
[Here are some examples of Vagrantfiles for multi-machines using _for...in_ loop](https://www.vagrantup.com/docs/vagrantfile/tips)
With **vagrant up** command are the machines started and ready to be provisioned.

2. Try to install Docker on the created machines. 

**[Hint]: To install Docker in each host of the cluster, two scenarios will be described during the lab presentation. **"Shell scripts"** and **"Ansible Playbooks"** could be used to provision a cluster, try out the scenarios and find the differences between the two methods and the limitations of each one**

Shell-Scripts | Ansible Playbooks
------------ | -------------
Try to install docker using shell scripts, to get started you can of course see our [GitHub Repository](https://github.com/jennerwein/swarmlab/tree/master/swarm_shell_prov) or the examples in the official documentation [Vagrant provisioning with Shell](https://www.vagrantup.com/docs/provisioning/shell) | You learned the basics of Ansible during Lab-2, you can find some basics under [SwarmLab Repository](https://github.com/jennerwein/swarmlab/tree/master/basics) or in the [official documentation](https://docs.ansible.com/ansible/latest/user_guide/intro_getting_started.html). Try to create a Playbook to install Docker on your Hosts

**[Hint]: Since Ansible can only manage Windows hosts, please use "ansible_local" for provisioning, which does not require any installation of Ansible in the target host**

## Exercise 2: _[Keywords: Docker-swarm, Workers, Managers ...]_

We will modify the Vagrantfile from **Exercise1** and initialise **Docker-Swarm** on the **Manager**.
The is two types in the Docker-swarm Jargon: **Workers** and **Managers**. We will choose a Manager and initialise Docker-swarm there.
The **Manager** will control the other hosts added to the Swarm (they could 
be added as Workers or Managers), to see the basic commands, please consult the[Basics in GitHub Repository](https://github.com/jennerwein/swarmlab/tree/master/basics)


Shell-Scripts | Ansible Playbooks
------------ | -------------
To get an idea about the scripts, please check the [GitHub Repository](https://github.com/jennerwein/swarmlab/tree/master/swarm_shell_prov/provision): A) Create a script to initialise Docker-Swarm in your Manager <br> B) Create a script to add the other Host as second Manager or Worker (is you choice) | A) Try to write a Playbook to initialise Docker-Swarm in your choosed main manager <br> B) Try to add the other hosts to your 
 
**[Hint]: Create a Playbook to initialise Docker-Swarm and add Workers/Managers to it could be little bit complexe, to get an idea about it, I recommend you to read the [Playbooks/Roles](https://github.com/jennerwein/swarmlab/tree/master/swarm_ansible_prov/provision) in GitHub and try to anderstand the logic behind it. There is of course no ideal solution for a problem, you can make your own logic and discuss it in the Lab.**

 ## Exercise 3: _[Keywords: Portainer]_

Your Lab is now started, you have created a Cluster and installed Docker on it and initialised Docker-Swarm, the three main goals are already done.
We will try now to install **Portainer** in the Cluster.

_**Whats is Portainer**_: Is an Open-Source Tool used to facilate the management of the containers: [Official Portainer Documentation](https://documentation.portainer.io/#about-portainer)

Shell-Scripts | Ansible Playbooks
------------ | -------------
Write a script that install Portainer and use it in the Provisioning Loop in Vagrantfile. Open Portainer in the Browser to check the Installation | Write a playbook to install Portainer in one of your Cluster Hosts, call Portainer in your Browser to check the Installation.