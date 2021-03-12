---
title: "N2 Gnome Image Changelog"
author: "jgmdev"
---
**Date - 30/12/2020**
* Improved initial setup script to not require a system reboot, so the system
  doesn't reboots anymore after reaching login manager.
* Includes kernel 5.10.2 with chewitt panfrost patches and tobetter patches.
* Recent build of mesa-arm-git which seems to have fixed some rendering issues
  on supertuxkart and have better performance.
* Default /boot/boot.ini now has the bootlabel set to "ArchLinux GNOME Lite"
  by the image generator.
* Use uuid on /boot/boot.ini and /etc/fstab instead of devices names to prevent
  possible boot issues.
* Latest software updates.

**Date - 23/10/2020**
* Updated kernel from 5.7 to 5.8
* Enabled audio support.
* Added repository for easy software updates.
* Improved uboot-odroid-n2plus to generate proper boot.ini if changing from
  5.x kernel to 4.9.
* Latest software updates.

**Date - 05/08/2020**
* First release
