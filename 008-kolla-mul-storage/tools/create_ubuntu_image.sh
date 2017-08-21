#!/bin/bash
IMAGE=xenial-server-cloudimg-amd64-disk1.img
IMAGE_NAME=ubuntu1604
IMAGE_TYPE=linux

# Sanitize language settings to avoid commands bailing out
# with "unsupported locale setting" errors.
unset LANG
unset LANGUAGE
LC_ALL=C
export LC_ALL
for i in curl openstack; do
    if [[ ! $(type ${i} 2>/dev/null) ]]; then
        if [ "${i}" == 'curl' ]; then
            echo "Please install ${i} before proceeding"
        else
            echo "Please install python-${i}client before proceeding"
        fi
        exit
    fi
done
# Move to top level directory
REAL_PATH=$(python -c "import os,sys;print os.path.realpath('$0')")
cd "$(dirname "$REAL_PATH")/.."

# Test for credentials set
if [[ "${OS_USERNAME}" == "" ]]; then
    echo "No Keystone credentials specified.  Try running source openrc"
    exit
fi

# Test to ensure configure script is run only once
if openstack image list | grep -q ${IMAGE_NAME}; then
    echo "Already had the image"
    exit
fi

echo Creating glance image.
openstack image create --disk-format qcow2 --container-format bare --public \
    --property os_type=${IMAGE_TYPE} --file ./${IMAGE} ${IMAGE_NAME}
