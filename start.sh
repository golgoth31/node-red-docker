#!/bin/bash

echo "Starting socat"
echo ${1}
socat ${1} ${2} &

echo "Starting node-red"
npm start --cache /data/.npm -- --userDir /data
