# [Backup for Hive](http://backup.hive.pt)

Set of backups tools/scripts to be used internally.

## Snapshots

In order to use snapshots the *** utility should be used

    00 03 *  *  *  /usr/bin/rsnapshot daily
    00 03 *  *  07 /usr/bin/rsnapshot weekly
    00 03 01 *  *  /usr/bin/rsnapshot monthly
