#!/bin/bash

cd /home/ubuntu/app || exit 1

JAR=$(find . -name "*.jar" | head -n 1)

if [ -z "$JAR" ]; then
echo "JAR 파일을 찾을 수 없습니다."
exit 1
fi

nohup java -jar "$JAR" --server.port=8080 > /home/ubuntu/app/app.log 2>&1 &

echo $! > /home/ubuntu/app/app.pid

exit 0
