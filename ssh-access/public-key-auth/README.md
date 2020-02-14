# docker-ssh-public-key-auth

A Docker image that accepts SSH connections and authenticates the user
 through a private and public key pair.

## Instructions

1. Create a public and private key pair:
```bash
ssh-keygen
```

2. Export the public key to the `SSH_PUBLIC_KEY` environment variable:
```bash
export SSH_PUBLIC_KEY=$(cat ~/.ssh/<username>/id_rsa.pub)
```

3. Build the Docker image:
```bash
docker build --rm -t ssh-public-key-auth .
```

4. Start a container:
```bash
docker run -d -e SSH_PUBLIC_KEY --rm ssh-public-key-auth
```

5. Get container's IP address:
```bash
docker inspect <container-id> | grep '"IPAddress"' | head -n 1
```

6. Connect using SSH:
```bash
ssh -i ~/.ssh/<username>/id_rsa root@<container-ip>
```

## References

1. [Tutorial: Specifying Sensitive Data Using Secrets Manager Secrets][1]
2. [How to use an entrypoint script to initialize container data at runtime][2]

[1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/specifying-sensitive-data-tutorial.html
[2]: https://success.docker.com/article/use-a-script-to-initialize-stateful-container-data
