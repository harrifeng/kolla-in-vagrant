#! /bin/bash

# run kolla-ansible deploy -i /root/inventory/multinode first

FILE='/etc/kolla/admin-openrc.sh'
if [ -f $FILE ]; then
    echo "$FILE is already there"
else
    kolla-ansible post-deploy
    source "$FILE"
    /usr/share/kolla-ansible/init-runonce
fi
