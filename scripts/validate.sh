#!/bin/bash
# 앱이 정상 기동했는지 헬스 체크
for i in $(seq 1 15); do
  if curl -fsS http://localhost:8080/health >/dev/null 2>&1; then
    echo "Health check passed"; exit 0
  fi
  sleep 2
done
echo "Health check failed"; exit 1
