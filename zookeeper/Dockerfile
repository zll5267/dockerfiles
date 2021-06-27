FROM zll5267/zookeeper:latest
COPY ./create_kafka_manager_node.sh /opt/zookeeper-3.4.13/bin/
CMD ["bash","-c","/usr/sbin/sshd && bash /opt/zookeeper-3.4.13/bin/create_kafka_manager_node.sh"]