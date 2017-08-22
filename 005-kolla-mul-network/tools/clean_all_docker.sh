# first to clean up all the container
docker stop `docker ps -a -q`
docker system prune --force
/usr/share/kolla-ansible/tools/cleanup-host
/usr/share/kolla-ansible/tools/cleanup-containers
