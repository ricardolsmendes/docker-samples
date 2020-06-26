# docker-ssh-public-key-auth

A Docker image that accepts SSH connections and authenticates the user through a
private and public key pair.

[![pipeline
status](https://gitlab.com/ricardomendes/docker-ssh-public-key-auth/badges/master/pipeline.svg)](https://gitlab.com/ricardomendes/docker-ssh-public-key-auth/-/commits/master)

## Instructions

1. Build the Docker image:

   ```sh
   docker build --rm -t ssh-public-key-auth .
   ```

1. Create a public and private key pair:

   ```sh
   ssh-keygen
   ```

1. Start a container providing it the public key as the `SSH_PUBLIC_KEY`
   environment variable:

   ```sh
   CONTAINER_ID=$(docker run -d -e SSH_PUBLIC_KEY="$(cat ~/.ssh/id_rsa.pub)" --rm ssh-public-key-auth)
   ```

1. Get container's IP address:

   ```sh
   CONTAINER_IP_ADDR=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $CONTAINER_ID)
   ```

1. Connect using SSH:

   ```sh
   ssh -i ~/.ssh/id_rsa root@${CONTAINER_IP_ADDR}
   ```

_**Sidenote**: Replace the public and private key file paths in steps 3 and 5 in
case you don't use `ssh-keygen` defaults._

## References

1. [How to use an entrypoint script to initialize container data at runtime][1]

[1]: https://success.docker.com/article/use-a-script-to-initialize-stateful-container-data
