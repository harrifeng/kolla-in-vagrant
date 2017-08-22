function download_if_not_here {
    if [ -f "$1/$2" ]; then
        echo "$1/$2 is already here"
    else
        wget -P "$1" "$3/$2"
    fi
}

download_if_not_here 'httpd' 'docker-ce-17.06.0.ce-1.el7.centos.x86_64.rpm' 'https://download.docker.com/linux/centos/7/x86_64/stable/Packages'
download_if_not_here 'httpd' 'python2-pip-8.1.2-5.el7.noarch.rpm' 'http://mirror.cs.pitt.edu/epel/7/x86_64/p'
download_if_not_here 'httpd' 'centos-binary-registry-ocata.tar.gz' 'http://tarballs.openstack.org/kolla/images'
