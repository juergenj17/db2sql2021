#!/bin/sh
docker run -h db2server \
  --name db2server_v115 \
  --privileged=true \
  --restart=always -p 50000:50000 -p 55000:55000 \
  --env-file ${HOME}/db2devz.env_list \
  -v ${HOME}/db2devz:/database \
  ibmcom/db2
