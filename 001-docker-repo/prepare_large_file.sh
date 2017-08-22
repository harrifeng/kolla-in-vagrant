function download_if_not_here {
    if [ -f "$1/$2" ]; then
        echo "$1/$2 is already here"
    else
        wget -P "$1" "$3/$2"
    fi
}
download_if_not_here 'pypi' 'ansible-2.3.1.0.tar.gz' 'https://pypi.tuna.tsinghua.edu.cn/packages/42/84/2a4a9274a8062684f71fbb75939d78c29829f81918a72bc94b5ccbd68950'
download_if_not_here 'pypi' 'docker-2.5.0-py2.py3-none-any.whl' 'https://pypi.tuna.tsinghua.edu.cn/packages/f7/7c/df4972f7d0016816e9be14f91389f3be123cd8af2bbdcce3394e30a430ce'

download_if_not_here 'httpd' 'docker-ce-17.06.0.ce-1.el7.centos.x86_64.rpm' 'https://download.docker.com/linux/centos/7/x86_64/stable/Packages'
download_if_not_here 'httpd' 'python2-pip-8.1.2-5.el7.noarch.rpm' 'http://mirror.cs.pitt.edu/epel/7/x86_64/p'
download_if_not_here 'httpd' 'centos-binary-registry-ocata.tar.gz' 'http://tarballs.openstack.org/kolla/images'
