date > /etc/vagrant_box_build_time

mkdir /home/ubuntu/.ssh
wget --no-check-certificate \
    'https://github.com/daisieh/vagrant-dryad/raw/ubuntu-username/packer-templates/ubuntu-12.04/ubuntu.pub' \
    -O /home/ubuntu/.ssh/authorized_keys
chown -R ubuntu /home/ubuntu/.ssh
chmod -R go-rwsx /home/ubuntu/.ssh
