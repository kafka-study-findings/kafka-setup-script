#!/bin/bash
cd kafka-binary

# Start zookeeper
nohup bin/zookeeper-server-start.sh config/zookeeper.properties > zk.log 2>&1 &

# Start kafka
nohup bin/kafka-server-start.sh config/server.properties > kafka.log 2>&1 &

tail -f zk.log | sed 's/^/zk.log: /' & tail -f kafka.log | sed 's/^/kafka.log: /'