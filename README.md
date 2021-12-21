# docker-samples

Custom ready-to-use Docker images.

## Samples

### MySQL/MariaDB

1. **Server with periodic backup**: _MariaDB_ server with a daily backup schedule
   | _reference guide_: [MySQL/MariaDB with scheduled backups running in Docker][1] @ Medium.

### Nginx

1. **Server with logs stored in custom paths**: _Alpine Nginx_ server with `error.log` and
   `access.log` stored in custom paths.

1. **Server listening in custom port**: _Alpine Nginx_ server listening on port `8080`.

### SSH access

1. [**Public Key Authentication**][2]: _Ubuntu-based_ image that accepts SSH connections and
   authenticates the user through a private and public key pair. _P.S.: the upstream repository is
   hosted on [GitLab][3]._

1. [**Public Key Authentication :: AWS Fargate**][4]: A special flavor of the
   **Public Key Authentication** solution, designed to allow SSHing into AWS Fargate managed
   containers. _P.S.: the upstream repository is hosted on [GitLab][5]._

### Tomcat

1. [**Access log backup**][6]: _Alpine Linux_ that organizes Tomcat access logs into a
   year/month/day hierarchical backup folders structure.

## How to contribute

Please make sure to take a moment and read the [Code of
Conduct](https://github.com/ricardolsmendes/docker-samples/blob/master/.github/CODE_OF_CONDUCT.md).

### Report issues

Please report bugs and suggest features via the [GitHub
Issues](https://github.com/ricardolsmendes/docker-samples/issues).

Before opening an issue, search the tracker for possible duplicates. If you find a duplicate, please
add a comment saying that you encountered the problem as well.

### Contribute code

Please make sure to read the [Contributing
Guide](https://github.com/ricardolsmendes/docker-samples/blob/master/.github/CONTRIBUTING.md)
before making a pull request.

[1]: https://medium.com/@ricardolsmendes/mysql-mariadb-with-scheduled-backup-jobs-running-in-docker-1956e9892e78
[2]: ./ssh-access/public-key-auth
[3]: https://gitlab.com/ricardomendes/docker-ssh-public-key-auth
[4]: ./ssh-access/aws-fargate
[5]: https://gitlab.com/ricardomendes/docker-ssh-aws-fargate
[6]: ./tomcat/access-log-backup
