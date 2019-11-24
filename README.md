# docker-samples

Custom ready-to-use Docker images.

## MySQL/MariaDB

1. __Server with periodic backup__: _MariaDB_ server with a daily backup schedule
| _reference guide_: [MySQL/MariaDB with scheduled backups running in Docker][1] @ Medium.

## Nginx

1. __Server with logs stored in custom paths__: _Alpine Nginx_ server with `error.log` and `access.log`
stored in custom paths.

1. __Server listening in custom port__: _Alpine Nginx_ server listening on port `8080`.

## Tomcat

1. [__Backup access logs__][2]: _Alpine Linux_ that organizes Tomcat access logs into a year/month/day hierarchical
folder structure.

[1]: https://medium.com/@ricardolsmendes/mysql-mariadb-with-scheduled-backup-jobs-running-in-docker-1956e9892e78

[2]: ./tomcat/backup-access-logs
