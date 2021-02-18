#/!bin/bash
sudo apt autoremove -y
sudo apt update

sudo truncate -s 0 /etc/machine-id
sudo rm /var/lib/dbus/machine-id
sudo ln -s /etc/machine-id /var/lib/dbus/machine-id

sudo tee -a /etc/systemd/system/report-ip.service << EOT
[Unit]
Description=IP reporter
After=network-online.target
Wants=network-online.target

[Service]
ExecStart=/bin/ping -c 12 1.1.1.1

[Install]
WantedBy=multi-user.target
EOT

sudo systemctl enable report-ip
