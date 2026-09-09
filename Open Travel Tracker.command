#!/bin/bash
cd "$(dirname "$0")"
python3 -m http.server 8767 &
SERVER_PID=$!
sleep 1
open http://localhost:8767
echo "Travel Tracker is running. Close this window to stop it."
wait $SERVER_PID
