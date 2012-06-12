# Makefile

SHELL := sh -e

install:

	mkdir -p $(DESTDIR)/usr/share/keyrings/
	cp -r keys/*.gpg $(DESTDIR)/usr/share/keyrings/

uninstall:

	rm -rf $(DESTDIR)/usr/share/keyrings/

reinstall: uninstall install
