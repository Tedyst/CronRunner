#!/bin/bash

ssh-keyscan -H $TARGET >> ~/.ssh/known_hosts
chmod 0600 /app/key

while true; do
    if [ $SILENT != "true" ]
        then echo Running command $COMMAND on $TARGET
    fi
    echo "$COMMAND" | ssh -T -i /app/key $USER@$TARGET
    sleep $PAUSE
done

