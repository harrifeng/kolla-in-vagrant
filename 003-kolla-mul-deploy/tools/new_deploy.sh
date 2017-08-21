#! /bin/bash

FILE='/etc/kolla/admin-openrc.sh'
if [ -f $FILE ]; then
    echo "$FILE is already there"
else
    kolla-ansible deploy -i /root/inventory/multinode
    kolla-ansible post-deploy
    source "$FILE"
    /usr/share/kolla-ansible/init-runonce
fi
