# Tomcat access log backup

_Alpine Linux_ that organizes Tomcat access logs into a year/month/day hierarchical backup folders structure.

## How it works

This container has a Shell Script ([scripts/daily/backup-log][1]) that runs on a daily basis and copies the access log
file generated by Tomcat in the previous day to a year/month/day hierarchical backup folder. Only one file is processed
per script execution. The destination folders are created automatically.

### Source folder sample

```bash
/opt/tomcat/
├──access-logs/
   └──...
   └──localhost_access_log.2017-04-20.txt
   └──...
   └──localhost_access_log.2018-06-14.txt
   └──...
   └──localhost_access_log.2018-12-02.txt
   └──...
   └──localhost_access_log.2019-01-17.txt
   └──...
   └──localhost_access_log.2019-02-03.txt
   └──...
   └──localhost_access_log.2019-11-23.txt
   └──...
```

### Destination folder sample

```bash
/opt/tomcat/backup/
├──access-logs/
   └──.../
   └──2017/
      └──.../
      └──2017-04/
         └──...
         └──localhost_access_log.2017-04-20.txt
         └──...
      ├──.../
   ├──2018/
      └──.../
      └──2018-06/
         └──...
         └──localhost_access_log.2018-06-14.txt
         └──...
      ├──.../
      └──2018-12/
         └──...
         └──localhost_access_log.2018-12-02.txt
         └──...
      ├──...
   ├──2019/
      └──2019-01/
         └──...
         └──localhost_access_log.2019-01-17.txt
         └──...
      ├──2019-02/
         └──...
         └──localhost_access_log.2019-02-03.txt
         └──...
      ├──.../
      └──2019-11/
         └──...
         └──localhost_access_log.2019-11-23.txt
         └──...
```

## Required volumes

- `/opt/tomcat/access-logs`: source folder, where Tomcat writes the access logs in the host system.

- `/opt/tomcat/backup/access-logs`: destination folder, where the structured backup resides.

[1]: ./scripts/daily/backup-log
