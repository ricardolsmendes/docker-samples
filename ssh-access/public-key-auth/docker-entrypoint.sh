#!/bin/sh

# Copy contents from the `SSH_PUBLIC_KEY` environment variable
# to the `~/.ssh/authorized_keys` file.
# The environment variable must be set when the container starts.
mkdir ~/.ssh
echo $SSH_PUBLIC_KEY > ~/.ssh/authorized_keys

# Clear the `SSH_PUBLIC_KEY` environment variable.
unset SSH_PUBLIC_KEY

# Start the SSH daemon.
/usr/sbin/sshd -D
