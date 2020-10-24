# Lab 6

Without a tool like Vagrant, building a Cluster will take lot of time and is sometimes painful
In this exercice you will build a complete Environment with Docker-Swarm and try to install some useful applications on the cluster

In GitHub Repository you can find under Basics, a getting started for each technologie with some basic examples and the most used Commands:
[Link to Basics](https://github.com/jennerwein/swarmlab/tree/master/basics)

To get an idea about the logic used to write the shell scripts or the playbooks and roles used in this project, feel free to check the project repository: 
[Project repository](https://github.com/jennerwein/swarmlab)

The Goals of the Lab:

- [x] Create Cluster with Vagrant (min two machines)
- [x] Install Docker in each machine and discover the possible method to do the task (Shell-scripts/Ansible)
- [x] Discover Docker-Swarm and initialise it on the Cluster 
- [x] Install Portainer

## Exercice 1: [Key words: Vagrantfile, Vagrantfile provisioning, Vagrantfile loops, Ansible Playbooks...]

Try to start two machines with vagrant (to remind some integrity errors, it is recommended to use the used Boxe in the project: **"ubuntu/bionic64"**)

1. Create a Vagrantfile to start two machines with **"ubuntu/bionic64"** Boxe, define a name for each host and a IP-Address.
[some Vagrantfiles examples for multi-machines using for...in loop](https://www.vagrantup.com/docs/vagrantfile/tips)

You installed the machines, perfect, we need now to provision those machines

2. Try to install Docker in the created machines. 

[Hint]: To Install Docker in each host of the Cluster, there is two scenarios that  will be descuss durant the presentation of the Lab. **"Shell scripts"** and **"Ansible Playbooks"** could be used to provision a Cluster, try the scenarios and find the difference and limits between the two methods at the end of the Lab.


Shell-Scripts | Ansible Playbooks
------------ | -------------
Try to install docker using shell scripts, to get started you can of course see our GitHub Repository. [Project Repository](https://github.com/jennerwein/swarmlab/tree/master/swarm_shell_prov) or the examples in the official documentation [Vagrant provisioning with Shell](https://www.vagrantup.com/docs/provisioning/shell) | You learned durant the Lab-2 the basics of Ansible, you can find some basics under [SwarmLab Repository](https://github.com/jennerwein/swarmlab/tree/master/basics) or in the [official Documentation](https://docs.ansible.com/ansible/latest/user_guide/intro_getting_started.html).

**[Hint]: Because Ansible can only manage Windows hosts, please use "ansible_local" for the provisioning, which require no installation of Ansible in the target host**
 
## Exercice 2: [Key words: Docker-swarm, Workers, Managers ...]

We will modify the Vagrantfile from **Exercice1** and start **Docker-Swarm** the **Manager**.
In Docker-swarm **Cluster** we have two kinds of hosts: **Workers** and **Managers**. We will choose a Manager and initialise Docker-swarm there.
The **Manager** will control the other hosts added to the Swarm (they could 
be added as Workers or Managers), to see the basic commands, please consult the[Basics in GitHub Repository](https://github.com/jennerwein/swarmlab/tree/master/basics)


Shell-Scripts | Ansible Playbooks
------------ | -------------
To get an idea about the scripts, please check the [GitHub Repository](https://github.com/jennerwein/swarmlab/tree/master/swarm_shell_prov/provision): 
			a) Create a script to initialise Docker-Swarm in your Manager 
			b) Create a script to add the other Host as second Manager or Worker (is you choice) | Content from cell 2
Content in the first column | a) Try to write a Playbook to initialise Docker-Swarm in your choosed main manager
			b) Try to add the other hosts to your 
 

  [Hint]: the task to initialise Docker-Swar and add Workers/Managers to it could be little bit complexe, to get an idea about it, i invite you to read the Playbooks/Roles in GitHub and try to anderstand the logic behind it. 
There is of course no ideal solution for a problem, you can make your own logic and discuss it in the Lab.




Exercice3:   

Your Lab is now started, you created a Cluster and installed Docker on it and initialised Docker-Swarm, we will try now to install Portainer in the Cluster.

Whats is Portainer: Is an Open-Source Tool used to facilate the management of the containers: https://documentation.portainer.io/#about-portainer

1) Install Portainer with Shell-Scripts:

Write a script that install Portainer and use it in the Provisioning Loop in Vagrantfile. Open Portainer in the Browser to check the Installation 

2) Install Portainer with Ansible:

Write a playbook to install Portainer in one of your Cluster Hosts, call Portainer in your Browser to check the Installation.