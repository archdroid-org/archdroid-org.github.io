---
title: "Odroid C4/HC4 Images Changes Log"
---
Changes Log for the various disk images of this device.

## GNOME

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

## XFCE

**Date - 29/12/2020**
* Improved initial setup script to not require a system reboot, so the system
  doesn't reboots anymore after reaching login manager.

**Date - 29/12/2020**
* Updated kernel to 5.10.2
* Fixed initial setup script to properly resize root partition on first boot.
* Included recent build of mesa-arm-git which seems to have fixed some
  rendering issues on supertuxkart and have better performance.
* Default /boot/boot.ini now has the bootlabel set to "ArchLinux XFCE" by the
  image generator.

**Date - 21/12/2020**
* Switched to panfrost mesa driver from mali binary driver.
* Use 5.10 kernel with panfrost patches from tobetter linux branch in order
  to also properly support the hc4.
* Includes recently build mesa from git with panfrost support and automated
  builds are automatically fetched from the pamac update manager.
* Added hc4 enabled uboot-odroid-c4 package.
* Use uuid on /boot/boot.ini and /etc/fstab instead of devices names to
  prevent possible boot issues.

**Date - 23/10/2020**
* Changed kernel name from linux-odroid-c4 to linux-odroid-g12 in an effort
  to unify kernel builds for N2 and C4,
* Improved uboot-odroid-c4 to generate proper boot.ini if changing
  from 4.9 kernel to 5.x.
* Added newer odroid-c4-libgl-fb package that can coexist with
  odroid-c4-libgl-wl package. Also both packages include a helper script
  (odroid-mali-wl, odroid-mali-fb) to run applications with that specific
  libMali version. Run odroid-mali-wl or odroid-mali-fb for usage instructions.
* Updated odroid-gl4es package that includes tool that can be used to
  enable/disable it as to run applications with gl4es even if disabled,
  for usage run odroid-gl4es.
* Latest software updates.

**Date - 24/08/2020**
* Updated kernel to 4.9.230 kernel which has updated wifi module driver.
* Set kernel timer frequency to 1000hz.
* Enabled Automatic process group scheduling
* Disabled NSA SELinux
* Disabled integrity subsystem
* Added odroid-alsa package.
* Added automatic resizing of system partition, generation of locales and
  setup of /etc/fstab
* Fixed booting from emmc module when sdcard is not present by properly
  setting up /etc/fstab
* Updated odroid-gl4es and added shell script to easily disable/enable it
  (run odroid-gl4es for usage info).
* Added realtime privileges to alarm user for pro-audio.

**Date - 20/05/2020**
* First release

## Wayfire

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
