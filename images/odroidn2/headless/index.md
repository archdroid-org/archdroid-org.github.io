---
title: "Headless Image for Odroid N2/N2+"
---

# Headless Image for Odroid N2/N2+

Minimal image that supports the higher N2+ CPU frequencies.

### What is Included?

* Most tools to easily configure network including wifi support (wifi-menu, netctl).
* Linux kernel maintained by [@tobetter](https://github.com/tobetter) and other
  people with audio support, hdmi driver fixes, higher cpu frequncy support for
  the N2+ and other changes.
* U-Boot package with hooks to update boot.ini automatically if kernel is
  changed to non mainline.
* Bluetooth
* Pre-configured cpupower with known working settings.
* Yay AUR helper.
* SSH Enabled.
* Bigger and more readable tty font.
* Installed archlinuxdroid-repo for easier kernel and custom package upgrades.
* Realtime privileges enabled for alarm user for pro-audio.

### Installation

The process of burning the image into a SD or EMMC is documented in
<https://wiki.odroid.com/troubleshooting/odroid_flashing_tools>.
The image doesn't boots from petitboot unless you have an updated petitboot
installed (20200721 release or newer seems to work) and compatible display
(otherwise you will get a blank screen), if not you will need to boot directly
from emmc or sdcard.

**Login Credentials:**
* username: alarm
* password: alarm

**Administration:**
* username: root
* password: root

Don't forget to change the default password for added security.

### Setup

After bootup and login if you don't have an network cable connected and only
a wifi dongle, you can use wifi-menu to easily setup the wireless connection:

```sh
# Follow the connection instructions on screen
sudo wifi-menu

# List available connections
netctl list

# Enable wifi connection on system reboot
sudo netctl enable connection-name-returned-by-netctl-list
```

### Improving System Performance

If you want better performance try running sudo cpupower frequency-set -g
performance from the terminal, and to permanently set the CPU governor to
performance open /etc/default/cpupower and change the line that reads:

```ini
governor='schedutil'
```
to
```ini
governor='performance'
```

Then you can just run sudo systemctl restart cpupower to apply the changes
immediately.

### Changes Log

**Date - 30/12/2020**
* First release
