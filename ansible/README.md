# Ansible Playbooks

## initial-docker-setup.yml
This playbook is used to setup docker machines. It will install docker and docker-compose on the machine with bash completion in addition to updating the system and installing some useful packages.

```bash
ansible-playbook initial-setup.yml --ask-pass --ask-become-pass
```

## inital-k8s-setup.yml
This playbook should be used to initialize the kubernetes cluster nodes before running kubespray.
```bash
ansible-playbook initial-k8s-setup.yml --ask-pass
```