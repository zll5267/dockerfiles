#!/usr/bin/env bash
#/bin/sh /usr/sbin/sshd
echo "start to start zk"
nohup bash /usr/bin/start-zk.sh &
echo "start to create kafka-manager"
sleep 5
cd /opt/zookeeper-3.4.13
./bin/zkCli.sh create /kafka-manager ""
./bin/zkCli.sh create /kafka-manager/mutex ""
./bin/zkCli.sh create /kafka-manager/mutex/locks ""
./bin/zkCli.sh create /kafka-manager/mutex/leases ""

while :
do
	sleep 2
done
