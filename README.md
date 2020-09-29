# swarmlab

Swarmlab creates a virtual Docker Swarm environment on your computer (Windows, Ubuntu). The environment consists of three master nodes.

You can choose from three different swarm styles, which are made available in the  subdirectories:

* **swarm_prag**: A pragmatic approach without a special provisioning style
* **swarm_shell_prov**: The provisioning of the nodes is carried out exclusively by shell scripts.
* **swarm_ansible_prov**: The provisioning of the nodes is carried out exclusively by Vagrant `ansible_local`. Using Vagrant `ansible_local` (compared Vagrant `ansible`) has the advantage that ansible does not have to be installed on the host. ([ansible_local](https://www.vagrantup.com/docs/provisioning/ansible_local), [ansible](https://www.vagrantup.com/docs/provisioning/ansible)
