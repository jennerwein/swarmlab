## Ansible

Ansible is **Agentless**, which means that no tool has to be installed on the client side.
The requirements to use Ansible:

 -Python

- **Inventory**: the machines that are managed with Ansible Playbooks, the standard storage location of the file is: **/etc/ansible/hosts**, this path can be in the configuration file ** ansible.cfg ** modified.

***How to create an inventory:***

The standard groups are: **all** and **ungrouped**

**all**: contains all hosts
**ungrouped**: All other hosts that have no group

### Examples: 

1. Without group: 

```192.168.56.101```

2. Under a group: 

```
[Hosts1]
192.168.56.101
192.168.56.101
```

3. Rank hosts:

```
[Hosts1]
192.168.56.[101:150]
```

- ***ansible.cfg***: used to change the default configuration, such as:
           - Inventory location: > inventory = ./hosts
           - Check SSH key: > host_key_checking = True
  You can also work without a configuration file but it will be necessary to mention the path to inventory:

      > ansible-playbook -i <name der Inventory>

- **Module**: Ansible offers many modules that simplify automation.

Examples:

- Ping Module:

> ansible paybookName -m (module) ping

- Fetch module:
With fetch Module we can transfer files from a remote host to local host:

```
- name: fetch nginx access log
  fetch:
    src: /var/log/nginx/access.lg
    dest: fetched
```

## Important commands:

#### To get the list of all modules, please execute the following command:
	
  > ansible-doc -l

#### Examples using those commands are also available:
	
  > ansible-doc command

#### Example of pinging all hosts in the inventory. Ping Module is actually not a simple ping but an SSH connection:

  > ansible -i inventory_beispiel.ini all -m ping

#### Checking the correctness of the syntax before running the playbooks:

  > ansile-playbook FileName.yml --syntax-check

#### List all hosts: 

  > ansible --list-host all

# Important remarks:

## Facts Gather: 

Facts Gather provides information about remote machines, such as the IP address, the name of the machine or the operating system that is installed on it.
To list all the facts:

```ansible <gruppe oder host> -m setup```

***Filter facts:***

Es gibt zahlreiche Informationen in Facts. Das Module **setup** unterschtützt einen Filter, mit dem man nach Faktennamen filtern kann, indem wir einen Glob angegeben wird.

There is a lot of information in facts. The ** setup ** module supports filter with which we can filter facts using names for example

``` ansible <Gruppe oder Host> -m setup -a 'filter=<Name ein Fact Object>' ```

## Variables:

Three types of variables:
  - Playbook Variables
  - Inventory Variables
  - Special Variables

## Playbook Variables: 

Die Variablen in Playbook zu definieren, ist die einfache und nicht empfehlenswerte Methode. die Variablen werden unter **vars** Section aufgelistet.

Defining the variables in playbook is the easy way but not recommended method. the variables are listed under ** vars ** Section.

**Example:**

```
vars:
  key_file: /etc/nginx/ssl/nginx.key
  cert_file: /etc/nginx/ssl/nginx.crt
  conf_file: /etc/nginx/sites-available/default
  server_name: localhost
```

A variable is accessible using Jinja template: {+ "{{variable}}" +}

## Spezial Variables:

1. **hostvars:**

Information über anderer Maschinen innerhalb der Playbook werdne oft gebraucht, z.B die IP-Addresse eines Servers. Solche Informationen sind als Facts verfügbar und man kann anhand die Name der Host die zugreiffen.

Information about remote machines in playbooks are often needed, e.g. the IP address. Such information is available as fact and can be accessed.

**Example:**

   ``` {{ hostvars[<Name des Hosts>].ansible_eth1.ipv4.address }} ```

2. **inventory_hostname:**

Is the name of the currently automated machine

3. **group_names:**

The list of groups to which the machine belongs

# Documentation

More detailed Information about Ansible can be found in the following link:

-[Ansible](https://docs.ansible.com/)