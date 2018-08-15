ZooKeeper: bin/zookeeper-server-start.sh config/zookeeper.properties

Kafka-Server:
bin/kafka-server-start.sh config/server.properties

Create-Topic: bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic test

List-Topic: bin/kafka-topics.sh --list --zookeeper localhost:2181

Create-Producer-Test: bin/kafka-console-producer.sh --broker-list localhost:9092 --topic test

Create-Consumer-Test: bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic test --from-beginning --zookeeper localhost:2181


bin/flume-ng agent --conf conf --conf-file example.conf --name a1 -Dflume.root.logger=INFO,console
