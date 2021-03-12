---
title: "C4 Gnome Image Changelog"
author: "jgmdev"
---
**Date - 30/12/2020**
* Improved initial setup script to not require a system reboot, so the system
  doesn't reboots anymore after reaching login manager.
* Recent build of mesa-arm-git which seems to have fixed some rendering issues
  on supertuxkart and have better performance.
* Default /boot/boot.ini now has the bootlabel set to "ArchLinux GNOME Lite"
  by the image generator.
* Latest software updates.

**Date - 21/12/2020**
* Switch to panfrost mesa driver from mali binary drivers.
* Use 5.10 kernel with panfrost patches from tobetter linux branch in order to
  also properly support the hc4.
* Includes recently build mesa from git with panfrost support and automated
  builds are automatically fetched from the pamac update manager.
* Added hc4 enabled uboot-odroid-c4 package.
* Use uuid on /boot/boot.ini and /etc/fstab instead of devices names to prevent
  possible boot issues.
* Latest software updates.

**Date - 23/10/2020**
* First release
