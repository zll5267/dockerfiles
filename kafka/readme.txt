.env 文件配置运行主机的ip, 设置对外提供ip

如果需要启动多个kafka实例，记得对外映射端口须去掉

cd /opt/zookeeper-3.4.13
./bin/zkCli.sh //登录机器后执行,否则kafka-manager使用异常
ls /kafka-manager
create /kafka-manager/mutex ""
create /kafka-manager/mutex/locks ""
create /kafka-manager/mutex/leases ""

./bin/zkCli.sh create /kafka-manager ""
./bin/zkCli.sh create /kafka-manager/mutex ""
./bin/zkCli.sh create /kafka-manager/mutex/locks ""
./bin/zkCli.sh create /kafka-manager/mutex/leases ""

docker run -it --rm ubuntu:18.04 bash
