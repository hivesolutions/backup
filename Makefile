install:
	mkdir -p /usr/backup
	rm -rf /usr/backup/scripts && cp -rp scripts /usr/backup
	rm -f /usr/bin/backup && ln -s /usr/backup/scripts/backup /usr/bin/backup

uninstall:
	rm -rf /usr/backup/scripts
	rm -f /usr/bin/backup
