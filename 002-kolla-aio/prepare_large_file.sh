FILE='docker-ce-17.06.0.ce-1.el7.centos.x86_64.rpm'
if [ -f $FILE ]; then
    echo "$FILE is already here"
else
    wget "https://download.docker.com/linux/centos/7/x86_64/stable/Packages/$FILE"
fi

FILE2='cirros-0.3.4-x86_64-disk.img'
if [ -f $FILE2 ]; then
    echo "$FILE is already here"
else
    wget "http://download.cirros-cloud.net/0.3.4/$FILE2"
fi

FILE3='xenial-server-cloudimg-amd64-disk1.img'
if [ -f $FILE3 ]; then
    echo "$FILE is already here"
else
    wget "http://cloud-images.ubuntu.com/xenial/current/$FILE3"
fi
