#!/bin/bash

ssh-keyscan -H $TARGET >> ~/.ssh/known_hosts
chmod 0600 /app/key

while true; do
    if [ $SILENT != "true" ]
        then echo Running command $COMMAND on $TARGET
    fi
    echo "$COMMAND" | ssh -T -i /app/key $USER@$TARGET

    [ -z "${PAUSE}" ] && echo "Exited since PAUSE not set." && exit 0

    sleep $PAUSE
done

