prefix = /usr

install:
	mkdir -p $(prefix)/backup && mkdir -p $(prefix)/bin
	rm -rf $(prefix)/backup/scripts && cp -rp scripts $(prefix)/backup
	rm -f $(prefix)/bin/backup && ln -s $(prefix)/backup/scripts/backup $(prefix)/bin/backup

uninstall:
	rm -rf $(prefix)/backup/scripts
	rm -f $(prefix)/bin/backup
