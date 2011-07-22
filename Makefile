# Makefile

SHELL := sh -e

SCRIPTS =	"debian/preinst install" \
		"debian/postinst configure" \
		"debian/prerm remove" \
		"debian/postrm remove" \

all: build

test:

	@echo -n "\n===== Comprobando posibles errores de sintaxis en los scripts de mantenedor =====\n"

	@for SCRIPT in $(SCRIPTS); \
	do \
		echo -n "$${SCRIPT}\n"; \
		bash -n $${SCRIPT}; \
	done

	@echo -n "¡TODO BIEN!\n=================================================================================\n\n"

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
