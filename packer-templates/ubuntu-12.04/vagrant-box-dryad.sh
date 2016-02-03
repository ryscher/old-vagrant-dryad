#!/usr/bin/env sh
#

packer build -only=virtualbox-iso -parallel=true template.json
vagrant box add ubuntu-12-04-x64-virtualbox.box --name dryad-ubuntu-12-04

