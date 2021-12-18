#!/bin/bash
source /etc/environment

args=''
for i in "${@}"; do
    args+="'$i' "
done

cd /node
eval "java -jar $BASE_DIR/FullNode.jar -c /node/config.conf $args"