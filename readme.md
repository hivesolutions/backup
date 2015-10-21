# [Backup for Hive](http://backup.hive.pt)

Set of backups tools/scripts to be used internally.

## Snapshots

In order to use snapshots the [rsnapshot](http://www.rsnapshot.org/) utility should be installed/used changing the
configuration file `/etc/rsnapshot.conf` so that includes a reference to the `/backups` directory using:

    backup    /backups/        localhost/

Please notice that the spaces between strings is made using tabs and not spaces.

To be able to execute the rsnapshot properly the proper cron strings should be added to the `/etc/crontab` file:

    00 03 *  *  *  root /usr/bin/rsnapshot daily
    00 03 *  *  07 root /usr/bin/rsnapshot weekly
    00 03 01 *  *  root /usr/bin/rsnapshot monthly
