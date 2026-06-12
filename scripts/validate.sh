#!/bin/bash

for i in $(seq 1 15)
do
if curl -fsS http://localhost:8080/health >/dev/null 2>&1
then
echo "Health Check Passed"
exit 0
fi

```
sleep 2
```

done

echo "Health Check Failed"
exit 1
