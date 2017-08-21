#! /bin/bash

# run kolla-ansible deploy -i /root/inventory/multinode first

FILE='/etc/kolla/admin-openrc.sh'
if [ -f $FILE ]; then
    echo "$FILE is already there"
    /usr/share/kolla-ansible/tools/cleanup-host
    /usr/share/kolla-ansible/tools/cleanup-containers
else
    kolla-ansible post-deploy
    source "$FILE"
    /usr/share/kolla-ansible/init-runonce
fi
