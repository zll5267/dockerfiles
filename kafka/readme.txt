如果需要启动多个kafka实例，记得对外映射端口须去掉

cd /opt/zookeeper-3.4.13
./bin/zkCli.sh //登录机器后执行,否则kafka-manager使用异常
ls /kafka-manager
create /kafka-manager/mutex ""
create /kafka-manager/mutex/locks ""
create /kafka-manager/mutex/leases ""