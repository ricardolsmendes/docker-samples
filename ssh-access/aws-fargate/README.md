# docker-ssh-aws-fargate

A Docker image that allows connecting to an [__AWS Fargate__][1] managed container through SSH.
User authentication is done by a public and private key pair; containers receive the public key
as an environment variable.

## Requirements

This solution is compliant with [AWS security standards][2] and makes use of a few products:

1. Amazon Elastic Container Registry
1. AWS Systems Manager Parameter Store (optional)
1. AWS Fargate

## General instructions

1. Build a Docker image from this repository
1. Push the image to __Amazon Elastic Container Registry__ ([__ECR__][3])
1. Create a SSH public and private key pair
1. Store the public key in AWS Systems Manager Parameter Store (optional)
1. Grant __Fargate Task Role__ read access to the parameter (optional)
1. Create a __Task Definition__ referring to the image and the public key
1. Run a __Fargate Task__ based on the Task Definition
1. Get Task's private IP address (public IP should work as well)
1. Open a SSH connection to the _Task Container_, providing the private key generated in step 3

[1]: https://aws.amazon.com/fargate/
[2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/specifying-sensitive-data.html
[3]: https://aws.amazon.com/ecr/
