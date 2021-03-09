---
title: "GNOME Desktop Environment"
---

# GNOME Desktop Environment

[GNOME](https://gnome.org) is a modern and featureful desktop environment.

### What is Included?

* Bluetooth
* Networking with NetworkManager
* Yay AUR helper.
* Pamac software center.
* Use of Arc desktop theme and Papirus icon theme by default.
* SSH Enabled.
* Bigger and more readable tty font.
* Installed archlinuxdroid-repo for easier kernel and custom package upgrades.
* Firefox with wayland support enabled. (see /etc/profile.d/)
* Realtime privileges enabled for alarm user for pro-audio.
* A nice space.jpg wallpaper!

#### Here are some basic screenshots:

<img class="img-fluid" src="{{ 'assets/img/gnome-ss01.jpg' | relative_url }}"/>

### Credentials

**Regular user:**
* username: alarm
* password: alarm

**Administration:**
* username: root
* password: root

The first boot setup wizard will let you easily change the default passwords
for added security.

### Setup

With latest image, after booting to the login manager wait some seconds because
the system will grow the partition and setup locales, then a setup wizard will
guide you to finish system setup, so make sure to have a display connected
when booting the image.

### Known Issues

##### The system automatically turns off

GNOME is set to sleep the device after a predefined amount of inactivity, to
prevent this disable the feature from the gnome control center / settings.

### Keyboard Bindings

Note: SuperKey is also known as WinKey

1. Press **SuperKey + a** to open the applications menu.
2. Press **SuperKey + t** to drop down the terminal
3. Press **SuperKey + f** to go into fullscreen for applications that support it
4. Press **SuperKey + q to** quit/close an application

For more bindings check the gnome settings.

### Changes Log

**Date - 30/12/2020**
* A more lite-weight gnome install by using just the minimal amount of packages
  required to get gnome running.
* Swapped nautilus with thunar to reduce the amount of required dependencies.
* Disabled suspend on gnome by default to prevent issues for users without a
  physical power button.
* Disabled search services on gnome for better performance.
* Changed default color theme of gnome-terminal to more readable one.
* Added **CTRL + ALT + T** keyboard shortcut to launch the terminal.
* Improved initial setup script to not require a system reboot, so the system
  doesn't reboots anymore after reaching login manager.
* Updated pamac package which now includes hooks to fix appstream xml files.
* Enabled the dhcpcd systemd service.

**Date - 05/08/2020**
* Blacklisted hid_logitech_hidpp which caused keyboard input to not work on
  Gnome for wireless logitech keyboards like the K400, K360, etc...
* Added MOZ_ENABLE_WAYLAND=1 environment variable to enable wayland on firefox
  by default.
