# pip
pip install -U pip              # lastest version of pip is a must
pip download --dest="pypi" pip==9.0.1 kolla-ansible==4.0.2 docker==2.5.1 python-openstackclient==3.12.0 ansible==2.3.2.0


function download_if_not_here {
    if [ -f "$1/$2" ]; then
        echo "$1/$2 is already here"
    else
        wget -P "$1" "$3/$2"
    fi
}

# docker
download_if_not_here 'httpd' 'docker-ce-17.06.0.ce-1.el7.centos.x86_64.rpm' 'https://download.docker.com/linux/centos/7/x86_64/stable/Packages'
# common rpm
download_if_not_here 'httpd' 'python2-pip-8.1.2-5.el7.noarch.rpm' 'http://mirror.cs.pitt.edu/epel/7/x86_64/p'
download_if_not_here 'httpd' 'libffi-devel-3.0.13-18.el7.x86_64.rpm' 'ftp://195.220.108.108/linux/centos/7.3.1611/os/x86_64/Packages'
download_if_not_here 'httpd' 'gcc-4.8.5-11.el7.x86_64.rpm' 'ftp://195.220.108.108/linux/centos/7.3.1611/os/x86_64/Packages'
download_if_not_here 'httpd' 'openssl-devel-1.0.1e-60.el7.x86_64.rpm' 'ftp://195.220.108.108/linux/centos/7.3.1611/os/x86_64/Packages'
download_if_not_here 'httpd' 'libselinux-python-2.5-6.el7.x86_64.rpm' 'ftp://195.220.108.108/linux/centos/7.3.1611/os/x86_64/Packages'
download_if_not_here 'httpd' 'ca-certificates-2017.2.14-70.1.el7_3.noarch.rpm' 'ftp://195.220.108.108/linux/centos/7.3.1611/updates/x86_64/Packages'
download_if_not_here 'httpd' 'ntp-4.2.6p5-25.el7.centos.x86_64.rpm' 'ftp://195.220.108.108/linux/centos/7.3.1611/os/x86_64/Packages'
download_if_not_here 'httpd' 'python-devel-2.7.5-48.el7.x86_64.rpm' 'ftp://195.220.108.108/linux/centos/7.3.1611/os/x86_64/Packages/'

# kolla image
download_if_not_here 'httpd' 'centos-binary-registry-ocata.tar.gz' 'http://tarballs.openstack.org/kolla/images'

# cloud image
download_if_not_here 'httpd' 'cirros-0.3.5-x86_64-disk.img' 'http://download.cirros-cloud.net/0.3.5'
download_if_not_here 'httpd' 'xenial-server-cloudimg-amd64-disk1.img' 'http://cloud-images.ubuntu.com/xenial/current'
