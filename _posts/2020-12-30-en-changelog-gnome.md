---
title: "Gnome Changelog"
author: "jgmdev"
---
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
