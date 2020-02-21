# docker-ssh-public-key-auth

A Docker image that accepts SSH connections and authenticates the user through a private and public
key pair.

## Instructions

1. Build the Docker image:
```bash
docker build --rm -t ssh-public-key-auth .
```

2. Create a public and private key pair:
```bash
ssh-keygen
```

3. Start a container providing it the public key as the `SSH_PUBLIC_KEY` environment variable:
```bash
docker run -d -e SSH_PUBLIC_KEY=$(cat ~/.ssh/id_rsa.pub) --rm ssh-public-key-auth
```

4. Get container's IP address:
```bash
docker inspect <container-id> | grep '"IPAddress"' | head -n 1
```

5. Connect using SSH:
```bash
ssh -i ~/.ssh/id_rsa root@<container-ip>
```

_**Sidenote**: Replace the public and private key file paths in steps 3 and 5 in case you don't use
`ssh-keygen` defaults._

## References

1. [How to use an entrypoint script to initialize container data at runtime][1]

[1]: https://success.docker.com/article/use-a-script-to-initialize-stateful-container-data
