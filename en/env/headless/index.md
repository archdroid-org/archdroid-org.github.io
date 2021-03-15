---
title: "Headless Environment"
---

# Headless Environment

Minimal image with enough packages to easily use it even from a wireless
connection.
([Changes Log](/en/env/changes/#headless))

### What is Included?

* Most tools to easily configure network including wifi support (wifi-menu, netctl).
* Bluetooth
* Yay AUR helper.
* SSH Enabled.
* Bigger and more readable tty font.
* Installed archlinuxdroid-repo for easier kernel and custom package upgrades.
* Realtime privileges enabled for alarm user for pro-audio.

### Credentials

**Regular user:**
* username: alarm
* password: alarm

**Administration:**
* username: root
* password: root

Don't forget to change the default password for added security.

### Setup

After bootup and login if you don't have a network cable connected and only
a wifi dongle, you can use wifi-menu to easily setup the wireless connection:

```sh
# Follow the connection instructions on screen
sudo wifi-menu

# List available connections
netctl list

# Enable wifi connection on system reboot
sudo netctl enable connection-name-returned-by-netctl-list
```
