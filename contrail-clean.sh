#!/bin/bash

../contrail-kolla-ansible/tools/kolla-ansible -i ../contrail-kolla-ansible/ansible/inventory/my_inventory --passwords ../contrail-kolla-ansible/etc/kolla/passwords.yml --configdir ../contrail-kolla-ansible/etc/kolla/ destroy --yes-i-really-really-mean-it
docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
docker rmi $(docker images -q)
docker system prune
docker volume ls | awk '{print $NF}' | xargs -I [] docker volume rm []
yum -y remove docker docker-ce docker-ce-cli docker-common docker-selinux docker-engine
/usr/bin/rm -r /var/lib/docker
/usr/bin/rm -r /etc/docker
rm -fr /var/log/contrail
rm -fr /etc/contrail

