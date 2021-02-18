#!/bin/bash
sudo sed -i 's/D/#&/' /usr/lib/tmpfiles.d/tmp.conf
sudo sed -i 's/Before=cloud-init-local.service/Before=cloud-init-local.service\nAfter=dbus.service/g' /lib/systemd/system/open-vm-tools.service
