---
title: "C4 Wayfire Image Changelog"
author: "jgmdev"
---
**Date - 05/01/2021**
* Added updated mesa-arm-git package.
* Dropped libva-mesa-driver (now included with mesa-arm-git).

**Date - 31/12/2020**
* Added support for HC4
* Includes kernel 5.10.2 with chewitt panfrost patches and tobetter patches.
* Switched from mali drivers to mesa+panfrost.
* Improved initial setup script to not require a system reboot, so the system
  doesn't reboots anymore after reaching login manager.
* Default /boot/boot.ini now has the bootlabel set to "ArchLinux Wayfire" by
  the image generator.
* Use uuid on /boot/boot.ini and /etc/fstab instead of devices names to prevent
  possible boot issues.

**Date - 03/06/2020**
* First release
