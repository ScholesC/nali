include config.mak
all:nali.c libqqwry/qqwry.c share/nali.sh
	gcc -o bin/qqwrynali nali.c libqqwry/qqwry.c
install:bin share
	mkdir -p $(DESTDIR)$(bindir)
	mkdir -p $(DESTDIR)$(datadir)
	install -D -m 0755 bin/qqwrynali $(DESTDIR)$(bindir)
	install -D -m 0755 bin/nali $(DESTDIR)$(bindir)
	install -D -m 0755 bin/nali-traceroute $(DESTDIR)$(bindir)
	install -D -m 0755 bin/nali-tracepath $(DESTDIR)$(bindir)
	install -D -m 0755 bin/nali-dig $(DESTDIR)$(bindir)
	install -D -m 0755 bin/nali-nslookup $(DESTDIR)$(bindir)
	install -D -m 0755 bin/nali-ping $(DESTDIR)$(bindir)
	install -D -m 0755 bin/nali-update $(DESTDIR)$(bindir)
	install -D -m 0644 share/QQWry.Dat $(DESTDIR)$(datadir)
	install -D -m 0644 share/nali.pl $(DESTDIR)$(datadir)
distclean: clean
	rm -f config.mak
	rm -f config.h
clean:
	rm -f bin/qqwrynali
	rm -f bin/nali
