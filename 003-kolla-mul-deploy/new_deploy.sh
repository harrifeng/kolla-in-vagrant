#! /bin/bash

# first to clean up all the container
/usr/share/kolla-ansible/tools/cleanup-host
/usr/share/kolla-ansible/tools/cleanup-containers

# brand new deploy
kolla-ansible deploy -i /root/inventory/multinode

kolla-ansible post-deploy
source /etc/kolla/admin-openrc.sh
/usr/share/kolla-ansible/init-runonce
