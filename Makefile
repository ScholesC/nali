include config.mak
all:nali.c libqqwry/qqwry.c share/nali.sh
	gcc -o bin/qqwrynali nali.c libqqwry/qqwry.c
install:bin share
	mkdir -p $(DESTDIR)$(bindir)
	mkdir -p $(DESTDIR)$(datadir)/nali/
	install -d -m 0755 bin/qqwrynali $(DESTDIR)$(bindir)/qqwrynali
	install -d -m 0755 bin/nali $(DESTDIR)$(bindir)/nali
	install -d -m 0755 bin/nali-traceroute $(DESTDIR)$(bindir)/nali-traceroute
	install -d -m 0755 bin/nali-tracepath $(DESTDIR)$(bindir)/nali-tracepath
	install -d -m 0755 bin/nali-dig $(DESTDIR)$(bindir)/nali-dig
	install -d -m 0755 bin/nali-nslookup $(DESTDIR)$(bindir)/nali-nslookup
	install -d -m 0755 bin/nali-ping $(DESTDIR)$(bindir)/nali-ping
	install -d -m 0755 bin/nali-update $(DESTDIR)$(bindir)/nali-update
	install -d -m 0644 share/QQWry.Dat $(DESTDIR)$(datadir)/nali/QQWry.Dat
	install -d -m 0755 bin/nali.pl $(DESTDIR)$(datadir)/nali/nali.pl
distclean: clean
	rm -f config.mak
	rm -f config.h
clean:
	rm -f bin/qqwrynali
	rm -f bin/nali
