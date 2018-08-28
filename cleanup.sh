#!/bin/bash

stop_container()
{
    ssh $addr docker stop controller
    ssh $addr docker stop analytics
    ssh $addr docker stop analyticsdb
}

remove_container()
{
    ssh $addr docker rm controller
    ssh $addr docker rm analytics
    ssh $addr docker rm analyticsdb
}

clean_config()
{
    ssh $addr rm -fr /etc/contrailctl
}

clean_db()
{
    ssh $addr rm -fr /var/lib/configdb
    ssh $addr rm -fr /var/lib/config_zookeeper_data
    ssh $addr rm -fr /var/lib/analyticsdb
    ssh $addr rm -fr /var/lib/analyticsdb_zookeeper_data
}

clean_log()
{
    ssh $addr rm -fr /var/log/contrail
    ssh $addr rm -fr /var/log/zookeeper
}

kubernetes_list=”10.84.18.11 10.84.18.12”

for addr in $kubernetes_list;
do
    stop_container
    remove_container
    clean_config
    clean_db
    clean_log
done
