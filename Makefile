# Makefile

SHELL := sh -e

all: test build

test:
	@echo "Nada para comprobar!"

build:
	@echo "Nada para compilar!"

install:

	mkdir -p $(DESTDIR)/usr/share/canaima-llaves/
	cp -r pubkey-nuevo-principal.asc $(DESTDIR)/usr/share/canaima-llaves/
	cp -r pubkey-viejo-principal.asc $(DESTDIR)/usr/share/canaima-llaves/
	cp -r pubkey-nuevo-seguridad.asc $(DESTDIR)/usr/share/canaima-llaves/

uninstall:

	rm -rf $(DESTDIR)/usr/share/canaima-llaves/

clean:

distclean:

reinstall: uninstall install
