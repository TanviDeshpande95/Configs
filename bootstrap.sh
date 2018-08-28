###This file installs basic packages on a VM/BMS, installs particular version of ansible and pulls all contrail images locally. Change repo information as required.

yum install -y epel-release
yum install -y python-pip
yum install -y net-tools
yum install -y vim
yum install -y nano
yum -y install git ansible-2.4.2.0
ansible-playbook playbook.yaml
service docker start
echo {\"insecure-registries\": [\"10.10.10.209:8787\"]} > /etc/docker/daemon.json
service docker restart
docker pull 10.10.10.209:8787/contrail-analytics-alarm-gen:ocata-5.0-166
docker pull 10.10.10.209:8787/contrail-analytics-api:ocata-5.0-166
docker pull 10.10.10.209:8787/contrail-analytics-collector:ocata-5.0-166
docker pull 10.10.10.209:8787/contrail-analytics-query-engine:ocata-5.0-166
docker pull 10.10.10.209:8787/contrail-analytics-snmp-collector:ocata-5.0-166
docker pull 10.10.10.209:8787/contrail-analytics-topology:ocata-5.0-166
docker pull 10.10.10.209:8787/contrail-external-cassandra:ocata-5.0-166
docker pull 10.10.10.209:8787/contrail-controller-config-api:ocata-5.0-166
docker pull 10.10.10.209:8787/contrail-controller-config-devicemgr:ocata-5.0-166
docker pull 10.10.10.209:8787/contrail-controller-config-schema:ocata-5.0-166
docker pull 10.10.10.209:8787/contrail-controller-config-svcmonitor:ocata-5.0-166
docker pull 10.10.10.209:8787/contrail-controller-control-control:ocata-5.0-166
docker pull 10.10.10.209:8787/contrail-controller-control-dns:ocata-5.0-166
docker pull 10.10.10.209:8787/contrail-controller-control-named:ocata-5.0-166
docker pull 10.10.10.209:8787/contrail-openstack-heat-init:ocata-5.0-166
docker pull 10.10.10.209:8787/contrail-external-kafka:ocata-5.0-166
docker pull 10.10.10.209:8787/contrail-openstack-neutron-init:ocata-5.0-166
docker pull 10.10.10.209:8787/contrail-node-init:ocata-5.0-166
docker pull 10.10.10.209:8787/contrail-nodemgr:ocata-5.0-166
docker pull 10.10.10.209:8787/contrail-openstack-compute-init:ocata-5.0-166
docker pull 10.10.10.209:8787/contrail-external-rabbitmq:ocata-5.0-166
docker pull 10.10.10.209:8787/contrail-external-redis:ocata-5.0-166
docker pull 10.10.10.209:8787/contrail-status:ocata-5.0-166
docker pull 10.10.10.209:8787/contrail-vrouter-agent:ocata-5.0-166
docker pull 10.10.10.209:8787/contrail-vrouter-agent-dpdk:ocata-5.0-166
docker pull 10.10.10.209:8787/contrail-vrouter-agent:ocata-5.0-166
docker pull 10.10.10.209:8787/contrail-vrouter-kernel-init-dpdk:ocata-5.0-166
docker pull 10.10.10.209:8787/contrail-vrouter-kernel-init:ocata-5.0-166
docker pull 10.10.10.209:8787/contrail-controller-webui-job:ocata-5.0-166
docker pull 10.10.10.209:8787/contrail-controller-webui-web:ocata-5.0-166
docker pull 10.10.10.209:8787/contrail-external-zookeeper:ocata-5.0-166
yum install -y gcc python-devel
pip install python-openstackclient
pip install python-ironicclient
