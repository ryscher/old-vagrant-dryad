
This directory contains Ubuntu Vagrant box templates to use in place of the
default `vagrant-dryad` box,
[precise64-10g](http://datadryad.org/downloads/precise64-10g.box), if a
disk larger than 10g is needed.

The script `./ubuntu-12.04/vagrant-box-dryad.sh` will build a 64-bit Ubuntu
12.04 Vagrant box and install it to the local machine as `dryad-ubuntu-12-04`.

NOTE: if you already have a local virtual machine running, you should destroy it 
and remove it before creating a new box:

```
vagrant destroy
vagrant box remove precise64-10g
vagrant box remove dryad-ubuntu-12-04
```

Then run the `vagrant-box-dryad.sh` script from inside its directory.

The new box can be used to replace the default Vagrant box in the Vagrantfile: 

```
#config.vm.box = "precise64-10g"
config.vm.box = "dryad-ubuntu-12-04"
```

Once started, the `dryad-ubuntu-12-04` machine's (dynamically allocated) hard disk
will have a virtual size of 40 GB. This is currently (2016/02) necessary when 
importing the production Dryad database into the Vagrant hosted environment.

#Installation

Packer is available by download from http://www.packer.io/downloads.html or
using a package manager, e.g.:

```
brew install packer
```

#Credits

These templates were taken from:

https://github.com/shiguredo/packer-templates


