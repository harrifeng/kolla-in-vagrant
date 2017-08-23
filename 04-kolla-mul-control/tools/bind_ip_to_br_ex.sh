# run after the kolla-ansible deploy
ip addr add 10.0.26.254/24 dev br-ex
ip link set br-ex up
