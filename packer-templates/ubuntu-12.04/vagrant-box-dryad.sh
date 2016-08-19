#!/usr/bin/env sh
#

packer build -only=virtualbox-iso -parallel=true template.json
cd ../..
vagrant box add packer-templates/ubuntu-12.04/ubuntu-12-04-x64-virtualbox.box --name dryad-ubuntu-12-04

