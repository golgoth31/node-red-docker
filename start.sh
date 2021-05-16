#!/bin/bash

echo "Starting socat"
socat pty,link=/dev/ttyRFX0,raw,user=root,group=dialout,mode=777,waitslave tcp:192.168.10.194:10001,forever,reuseaddr,keepalive &

echo "Starting node-red"
npm start --cache /data/.npm -- --userDir /data
