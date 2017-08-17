FILE='docker-ce-17.06.0.ce-1.el7.centos.x86_64.rpm'
if [ -f $FILE ]; then
    echo "$FILE is already here"
else
    wget https://download.docker.com/linux/centos/7/x86_64/stable/Packages/docker-ce-17.06.0.ce-1.el7.centos.x86_64.rpm
fi

FILE2='centos-binary-registry-ocata.tar.gz'
if [ -f $FILE2 ]; then
    echo "$FILE2 is already here"
else
  wget http://tarballs.openstack.org/kolla/images/centos-binary-registry-ocata.tar.gz
fi
