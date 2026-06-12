#!/bin/bash
# 실행 중인 앱 종료
if [ -f /home/ubuntu/app/app.pid ]; then
  kill -9 "$(cat /home/ubuntu/app/app.pid)" 2>/dev/null || true
  rm -f /home/ubuntu/app/app.pid
fi
pkill -f 'cicd-demo' 2>/dev/null || true
exit 0
