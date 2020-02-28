# docker-ssh-aws-fargate

A Docker image that allows connecting to an [__AWS Fargate__][1] managed container through SSH.
User authentication is done by a public and private key pair; containers receive the public key
as an environment variable.

This is the reference image used to demonstrate the work described in [9 steps to SSH into an AWS
Fargate managed container: leverage Public-key cryptography to establish secure connections][2].

## Requirements

This solution is compliant with [AWS security standards][3] and makes use of a few products:

1. Amazon Elastic Container Registry
1. AWS Systems Manager Parameter Store (optional)
1. Amazon ECS Task Definitions
1. AWS Fargate

## General instructions

1. Build an SSH-enabled Docker image from this repository
1. Push the image to __Amazon Elastic Container Registry__ ([__ECR__][4])
1. Create an SSH public and private key pair
1. Store the public key in AWS Systems Manager Parameter Store (optional)
1. Create a Task Definition
1. Grant __Task Execution IAM Role__ read access to the parameter (optional)
1. Run a Fargate Task using the definition
1. Get Task's IP address
1. Open an SSH connection to the _Task Container_, providing the private key generated in step 3

[1]: https://aws.amazon.com/fargate/
[2]: https://medium.com/ci-t/9-steps-to-ssh-into-an-aws-fargate-managed-container-46c1d5f834e2
[3]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/specifying-sensitive-data.html
[4]: https://aws.amazon.com/ecr/
