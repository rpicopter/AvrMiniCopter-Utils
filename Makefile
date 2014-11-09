install:
		install -d $(DESTDIR)/etc
		install -d $(DESTDIR)/etc/init.d
		install -d $(DESTDIR)/etc/init.d/manual
		install -d $(DESTDIR)/etc/udev/rules.d
		install -d $(DESTDIR)/usr/local/bin
		install -d $(DESTDIR)/var/local
		install -d $(DESTDIR)/etc/bluetooth
		install -d $(DESTDIR)/etc/dropbear
		install -d $(DESTDIR)/etc/lighttpd
		install -d $(DESTDIR)/etc/lighttpd/conf.d
		install -d $(DESTDIR)/avr
		install -d $(DESTDIR)/var/www
		install -d $(DESTDIR)/
		install -m 644 root/etc/php.ini $(DESTDIR)/etc/php.ini
		install -m 644 root/etc/group $(DESTDIR)/etc/group
		install -m 644 root/etc/exports $(DESTDIR)/etc/exports
		install -m 644 root/etc/bluetooth/main.conf $(DESTDIR)/etc/bluetooth/main.conf
		install -m 644 root/etc/bluetooth/network.conf $(DESTDIR)/etc/bluetooth/network.conf
		install -m 644 root/etc/bluetooth/pin $(DESTDIR)/etc/bluetooth/pin
		install -m 644 root/etc/udev/rules.d/91-btremove.rules $(DESTDIR)/etc/udev/rules.d/91-btremove.rules
		install -m 644 root/etc/udev/rules.d/91-btadd.rules $(DESTDIR)/etc/udev/rules.d/91-btadd.rules
		install -m 644 root/etc/udev/rules.d/92-btnetadd.rules $(DESTDIR)/etc/udev/rules.d/92-btnetadd.rules
		install -m 644 root/etc/udev/rules.d/92-btnetremove.rules $(DESTDIR)/etc/udev/rules.d/92-btnetremove.rules
		install -m 755 root/etc/init.d/S02firstboot $(DESTDIR)/etc/init.d/S02firstboot
		install -m 755 root/etc/init.d/S09dbus $(DESTDIR)/etc/init.d/S09dbus
		install -m 755 root/etc/init.d/S10udev $(DESTDIR)/etc/init.d/S10udev
		install -m 755 root/etc/init.d/S90i2c $(DESTDIR)/etc/init.d/S90i2c
		install -m 755 root/etc/init.d/S98ps3controller $(DESTDIR)/etc/init.d/S98ps3controller
		install -m 755 root/etc/init.d/S99controller $(DESTDIR)/etc/init.d/S99controller
		install -m 755 root/usr/local/bin/udevrun.sh $(DESTDIR)/usr/local/bin/udevrun.sh
		install -m 755 root/usr/local/bin/sixpair.sh $(DESTDIR)/usr/local/bin/sixpair.sh
		install -m 755 root/usr/local/bin/btnetstart.sh $(DESTDIR)/usr/local/bin/btnetstart.sh
		install -m 755 root/usr/local/bin/btnetstop.sh $(DESTDIR)/usr/local/bin/btnetstop.sh
		install -m 755 root/usr/local/bin/btstart.sh $(DESTDIR)/usr/local/bin/btstart.sh
		install -m 755 root/usr/local/bin/btstop.sh $(DESTDIR)/usr/local/bin/btstop.sh
		install -m 755 root/usr/local/bin/controller.sh $(DESTDIR)/usr/local/bin/controller.sh
		install -m 755 root/usr/local/bin/avr.sh $(DESTDIR)/usr/local/bin/avr.sh
		install -m 755 root/usr/local/bin/picsnap.sh $(DESTDIR)/usr/local/bin/picsnap.sh
		install -m 755 root/usr/local/bin/vidsnap.sh $(DESTDIR)/usr/local/bin/vidsnap.sh
		install -m 644 root/etc/lighttpd/modules.conf $(DESTDIR)/etc/lighttpd/modules.conf
		install -m 644 root/etc/lighttpd/conf.d/fastcgi.conf $(DESTDIR)/etc/lighttpd/conf.d/fastcgi.conf
		#install -m 644 root/var/www/* $(DESTDIR)/var/www/
		cp -R root/var/www/* $(DESTDIR)/var/www/
		install -m 644 root/firstboot $(DESTDIR)/firstboot
		mkdir -p $(DESTDIR)/etc/dropbear
		mkdir -p $(DESTDIR)/var/local
		mkdir -p $(DESTDIR)/avr

