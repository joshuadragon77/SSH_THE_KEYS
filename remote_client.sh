#!/bin/env sh


echo "SSHing the keys to the remote client";

if [ -e $REMOTE_CLIENT_SSH_AUTHORIZED_KEY_LOCATION ]
then
    echo "Authorized Key file already exist. Appending...";
    printf "$(cat $REMOTE_CLIENT_SSH_AUTHORIZED_KEY_LOCATION)\n$SSH_KEYS" > $REMOTE_CLIENT_SSH_AUTHORIZED_KEY_LOCATION;
else
    echo "Authorized Key file doesn't exist. Writing...";
    printf "$SSH_KEYS" > $REMOTE_CLIENT_SSH_AUTHORIZED_KEY_LOCATION;
fi

echo "Done!";