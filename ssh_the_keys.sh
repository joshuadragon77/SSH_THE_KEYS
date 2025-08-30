PARAMETERS="
REMOTE_CLIENT_SSH_AUTHORIZED_KEY_LOCATION="\$HOME/.ssh/authorized_keys";
SSH_KEYS=\"$(cat ~/.ssh/id_ed25519.pub)\";
";
echo "$PARAMETERS;$(cat remote_client.sh)" | ssh -T $1 $2 $3 $4 $5;