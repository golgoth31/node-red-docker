FROM nodered/node-red:1.3.4

USER root
RUN apk add --no-cache socat

COPY start.sh .

ENTRYPOINT ["/bin/bash", "start.sh"]
