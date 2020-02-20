# docker-ssh-aws-fargate

A Docker image that allows connecting to an [__AWS Fargate__][1] managed container through SSH.
User authentication is done by a public and private key pair; containers _receive_ the public key
from [__AWS Secrets Manager__][2].

## Requirements

This solution is up-to-date with [AWS security standards][3] and makes use of a few products:

1. Amazon Elastic Container Registry
1. AWS Secrets Manager
1. AWS Fargate

## General instructions

1. Build a Docker image from this repository
1. Push the image to __Amazon Elastic Container Registry__ ([__ECR__][4])
1. Create a SSH public and private key pair
1. Store the public key value in AWS Secrets Manager using `SSH_PUBLIC_KEY` for the _key_
1. Grant __Fargate Task Role__ read access to the secret
1. Create a __Task Definition__ using the image and secret created in steps 2 and 4, respectively
1. Run a __Fargate Task__ based on the Task Definition
1. Get Task's private IP address (public IP should work as well)
1. Open a SSH connection to the _Task Container_, providing the private key generated in step 3

[1]: https://aws.amazon.com/fargate/
[2]: https://aws.amazon.com/secrets-manager/
[3]: https://aws.amazon.com/about-aws/whats-new/2018/12/aws-fargate-platform-version-1-3-adds-secrets-support/
[4]: https://aws.amazon.com/ecr/
