vagrant-dryad
=============

Vagrant and Ansible config for building a Dryad VM

Uses Ubuntu 12.04 64-bit, Ansible, Postgres, Java6, Tomcat6

## Requirements

These applications must be installed on your host machine.  They will be used to build and run a virtual machine containing Dryad.

1. [Vagrant](http://vagrantup.com)
2. [Ansible](http://ansible.com)
3. [VirtualBox](http://virtualbox.org)

Vagrant and VirtualBox installation packages can be downloaded from their respective websites.  Ansible is a Python package with [many ways to install](http://docs.ansible.com/intro_installation.html).  I use [Homebrew](http://brew.sh) and simply `brew install ansible`.

These packages are available on many platforms, but I've only tested this on Mac OS X 10.9.

## Getting started

First, You will need to clone the repository:

    git clone git@github.com:datadryad/vagrant-dryad.git
    cd vagrant-dryad

Then, have a look at ansible-dryad/group_vars/all.  This is a YAML file that specifies configuration for your VM that you may change (such as install directories, database passwords, etc).

__Note__: If you wish to change the Dryad port from 9999, you will also need to change the forwarding config in the Vagrantfile.

With Virtualbox, vagrant, and ansible installed, building the virtual machine is done with

    vagrant up

This command takes a while - it's downloading a base virtual machine, installing software packages, and loading Dryad.

Sometimes provisioning fails with `fatal: [x.x.x.x] => SSH encountered an unknown error during the connection.`.  In this case simply retry with `vagrant provision`

## Accessing the Virtual Machine

After the machine has been created/provisioned successfully, you can log in with

    vagrant ssh
    
Within the virtual machine, the __vagrant__ user owns the Dryad code and installed directory.

## Developing, Building, Deploying

The dryad code is checked out to `~/dryad-repo`, and there are scripts in `~/bin` to build and deploy Dryad.  The ansible playbook adds `~/bin` to your path on login

* bin/build_dryad.sh - runs the maven package step
* bin/deploy_dryad.sh - runs the ant install step

## Communication with the VM

The Vagrantfile sets up a port forwarding for port 9999. When the Vagrant VM is running, port 9999 on your local machine (http://127.0.0.1:9999) will be forwarded to the Dryad tomcat port on the VM.

Additionally, Vagrant synchronizes the contents of the directory containing the Vagrantfile to `/vagrant` on the virtual machine.
