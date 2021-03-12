---
title: "N2 Wayfire Image Changelog"
author: "jgmdev"
---
**Date - 24/02/2021**
* Updated kernel to 5.11.0 with patch for 1Ghz colckrate for gpu
* Updated uboot and boot.ini file to support forcing an edid bin file for problematic displays that don't properly boot with petitboot.
* Overall package updates.

**Date - 09/02/2021**
* Updated kernel package to 5.11 rc6 (linux-odroid-511)
* Set cpupower governor to performance by default.
* Added panfrost-performance systemd service that sets gpu governor to performance at startup.
* Includes latest mesa-arm-git package with new bifrost scheduler by panfrost developers.
* Overall software updates.

**Date -31/12/2020**
* Includes kernel 5.10.2 with chewitt panfrost patches and tobetter patches.
* Switched from mali drivers to mesa+panfrost.
* Default /boot/boot.ini now has the bootlabel set to "ArchLinux Wayfire" by the image generator.
* Use uuid on /boot/boot.ini and /etc/fstab instead of devices names to prevent possible boot issues.
* Latest software updates.

**Date - 05/08/2020**
* Added automatic resizing of system partition, generation of locales and setup of /etc/fstab
* Fixed booting from emmc module when sdcard is not present by properly setting up /etc/fstab

**Date - 03/08/2020**
* Swapped archlinux linux-aarch64 kernel with tobetter fork (5.7.10) which has support for n2+.
* Updated uboot to latest automatic travis build provided by hardkernel.

**Date - 27/05/2020**
* First release
