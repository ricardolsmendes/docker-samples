#!/bin/sh

# Create a folder to store user's SSH keys if it does not exist.
USER_SSH_KEYS_FOLDER=~/.ssh
[ ! -d $USER_SSH_KEYS_FOLDER ] && mkdir -p $USER_SSH_KEYS_FOLDER

# Extract contents from the `SSH_PUBLIC_KEY` environment variable
# to the `$USER_SSH_KEYS_FOLDER/authorized_keys` file.
#
# The environment variable value must be set in AWS Secrets Manager
# (using `SSH_PUBLIC_KEY` for secret's key) and referred in the `secrets`
# section of the Task Definition. The secret, in the Task Definition,
# must also have the `SSH_PUBLIC_KEY` name.
#
# AWS Secrets are provided as JSON objects, so `jq` tool is used to
# parse the value assigned to the `SSH_PUBLIC_KEY` key.
echo $SSH_PUBLIC_KEY | jq ".SSH_PUBLIC_KEY" --raw-output > $USER_SSH_KEYS_FOLDER/authorized_keys

# Clear the `SSH_PUBLIC_KEY` environment variable.
unset SSH_PUBLIC_KEY

# Start the SSH daemon.
/usr/sbin/sshd -D
