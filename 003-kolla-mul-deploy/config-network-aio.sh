#! /bin/bash


# first to clean up all the container
/usr/share/kolla-ansible/tools/cleanup-host
/usr/share/kolla-ansible/tools/cleanup-containers


# we create the ceph disk
parted /dev/sdb -s -- mklabel gpt mkpart KOLLA_CEPH_OSD_BOOTSTRAP 1 -1

kolla-ansible deploy -i /root/inventory/multinode
# ip addr add 10.0.25.254/24 dev br-ex
# ip link set br-ex up
# kolla-ansible post-deploy
# source /etc/kolla/admin-openrc.sh
# /usr/share/kolla-ansible/init-runonce
