#!/bin/bash

echo "Starting node-red"
npm start --cache /data/.npm -- --userDir /data &

echo "Starting socat"
socat ${1} ${2}
