# first to clean up all the container
docker stop `docker ps -a -q`
docker system prune --force
