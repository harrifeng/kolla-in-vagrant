FILE1='xenial-server-cloudimg-amd64-disk1.img'
if [ -f $FILE1 ]; then
    echo "$FILE1 is already here"
else
    wget "http://cloud-images.ubuntu.com/xenial/current/$FILE3"
fi

FILE2='cirros-0.3.4-x86_64-disk.img'
if [ -f $FILE2 ]; then
    echo "$FILE2 is already here"
else
    wget "http://download.cirros-cloud.net/0.3.4/$FILE2"
fi
