# Makefile for ffhevc

PREFIX=/usr/local
DOCDIR=$(PREFIX)/share/doc
MANDIR=$(PREFIX)/share/man/man1

install:
	mkdir -p -m 755 $(PREFIX)/bin $(DOCDIR)/ffhevc $(MANDIR)
	
	cp -f ffhevc $(PREFIX)/bin
	cp -f hdr $(PREFIX)/bin
	chmod 755 $(PREFIX)/bin/ffhevc
	chmod 755 $(PREFIX)/bin/hdr
	cp -f AUTHORS LICENSE README ChangeLog *.json *.txt $(DOCDIR)/ffhevc
	chmod 644 $(DOCDIR)/ffhevc/*
	cp -f ffhevc.1 $(MANDIR)
	gzip -9 -f $(MANDIR)/ffhevc.1

uninstall:
	rm -f $(PREFIX)/bin/ffhevc
	rm -f $(PREFIX)/bin/hdr
	rm -f $(MANDIR)/ffhevc.1.gz
	rm -rf $(DOCDIR)/ffhevc
