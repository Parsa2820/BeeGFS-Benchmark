# Ansible Playbooks

## Test Inventory
```bash
ansible all -m ping
```

## initial-docker-setup.yml
This playbook is used to setup docker machines. It will install docker and docker-compose on the machine with bash completion in addition to updating the system and installing some useful packages.

```bash
ansible-playbook initial-setup.yml 
```

## beegfs-server.yml
This playbook is used to setup a beegfs server. It will install and run three main components of beegfs server: management, metadata and storage. 

```bash
ansible-playbook beegfs-server.yml 
```

## beegfs-client.yml
This playbook is used to setup a beegfs client. It will build and install the beegfs client on the machine. This playbook uses modified version the stackhpc.beegfs role from ansible galaxy which is present in the roles directory. 

```bash
ansible-playbook beegfs-client.yml 
```

## benchmark-tools.yml
This playbook is used to setup benchmark tools on the machine. It will install IOZone, FIO, and IOR on the machine. 

```bash
ansible-playbook benchmark-tools.yml 
```

## open-cas.yml
This playbook installs Open CAS on the BeeGFS clients machine.

```bash
ansible-playbook open-cas.yml
```