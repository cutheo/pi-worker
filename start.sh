#!/bin/bash
set -e
echo "=== Downloading clirelay ==="
curl -sL "https://github.com/kittors/CliRelay/releases/download/v0.5.6/clirelay-linux-amd64" -o /tmp/clirelay
chmod +x /tmp/clirelay
echo "=== Starting clirelay ==="
/tmp/clirelay -config /etc/clirelay/config.yaml &
sleep 10
echo "=== Ready ==="
wait
