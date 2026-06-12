#!/bin/bash
cd /home/ubuntu/app || exit 1
JAR=$(ls target/*.jar 2>/dev/null | head -n1)
[ -z "$JAR" ] && JAR=$(ls *.jar 2>/dev/null | head -n1)
nohup java -jar "$JAR" --server.port=8080 > /home/ubuntu/app/app.log 2>&1 &
echo $! > /home/ubuntu/app/app.pid
exit 0
