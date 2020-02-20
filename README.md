# docker-samples

Custom ready-to-use Docker images.

## MySQL/MariaDB

1. __Server with periodic backup__: _MariaDB_ server with a daily backup schedule
| _reference guide_: [MySQL/MariaDB with scheduled backups running in Docker][1] @ Medium.

## Nginx

1. __Server with logs stored in custom paths__: _Alpine Nginx_ server with `error.log` and
`access.log` stored in custom paths.

1. __Server listening in custom port__: _Alpine Nginx_ server listening on port `8080`.

## SSH access

1. [__Public Key Authentication__][2]: _Ubuntu-based_ image that accepts SSH connections and
authenticates the user through a private and public key pair. _P.S.: the upstream repository is
hosted on [GitLab][3]._

1. [__Public Key Authentication :: AWS Fargate__][4]: A special flavor of the
__Public Key Authentication__ solution, designed to allow SSHing into AWS Fargate managed
containers. _P.S.: the upstream repository is hosted on [GitLab][5]._

## Tomcat

1. [__Access log backup__][6]: _Alpine Linux_ that organizes Tomcat access logs into a
year/month/day hierarchical backup folders structure.

[1]: https://medium.com/@ricardolsmendes/mysql-mariadb-with-scheduled-backup-jobs-running-in-docker-1956e9892e78
[2]: ./ssh-access/public-key-auth
[3]: https://gitlab.com/ricardomendes/docker-ssh-public-key-auth
[4]: ./ssh-access/aws-fargate
[5]: https://gitlab.com/ricardomendes/docker-ssh-aws-fargate
[6]: ./tomcat/access-log-backup
