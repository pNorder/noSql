#!/bin/bash -l

mkdir -p /app/hbase-1.2.11/logs

echo "Starting Zookeeper"
/app/hbase-1.2.11/bin/hbase zookeeper &> /app/hbase-1.2.11/logs/zookeeper.log &
echo

echo "Starting HBase"
/app/hbase-1.2.11/bin/start-hbase.sh
echo

echo "Starting RegionServer"
/app/hbase-1.2.11/bin/local-regionservers.sh start 1

echo "Starting HBase Rest API server"
/app/hbase-1.2.11/bin/hbase-daemon.sh start rest
echo

echo "Starting HBase Thrift API server"
/app/hbase-1.2.11/bin/hbase-daemon.sh start thrift
echo

# Attempt to gracefully stop HBase when possible
stopHBase(){
    echo 'Container terminating, stopping HBase...'
    /app/hbase-1.2.11/bin/hbase-daemon.sh stop rest
    /app/hbase-1.2.11/bin/hbase-daemon.sh stop thrift
    /app/hbase-1.2.11/bin/local-regionservers.sh stop 1
    /app/hbase-1.2.11/bin/stop-hbase.sh
}
trap stopHBase INT QUIT TRAP ABRT TERM EXIT

# Display HBase logs to console
tail -F /app/hbase-1.2.11/logs/hbase--master*.log -F /app/hbase-1.2.11/logs/hbase--master*.out -F /app/hbase-1.2.11/logs/zookeeper.log &

# Wait on tail process
wait $!
