---
title: "Odroid N2/N2+ Images Changes Log"
---
Changes Log for the various disk images of this device.

## GNOME

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

## Headless

**Date - 30/12/2020**
* First release

## XFCE

**Date - 29/12/2020**
* Switched to panfrost mesa driver from mali binary driver.
* Improved initial setup script to not require a system reboot, so the
  system doesn't reboots anymore after reaching login manager.
* Includes kernel 5.10.2 with chewitt panfrost patches and tobetter patches.
* Recent build of mesa-arm-git which seems to have fixed some rendering
  issues on supertuxkart and have better performance.
* Default /boot/boot.ini now has the bootlabel set to "ArchLinux XFCE" by
  the image generator.
* Use uuid on /boot/boot.ini and /etc/fstab instead of devices names to
  prevent possible boot issues.
* Latest software updates.

**Date - 23/10/2020**
* Changed kernel name from linux-odroid-n2plus to linux-odroid-g12 in an effort
  to unify kernel builds for N2 and C4,
* Improved uboot-odroid-n2plus to generate proper boot.ini if changing from
  4.9 kernel to 5.x.
* Added newer odroid-n2-libgl-fb package that can coexist with
  odroid-n2-libgl-wl package. Also both packages include a helper script
  (odroid-mali-wl, odroid-mali-fb) to run applications with that specific
  libMali version. Run odroid-mali-wl or odroid-mali-fb for usage instructions.
* Updated odroid-gl4es package that includes tool that can be used to
  enable/disable it as to run applications with gl4es even if disabled,
  for usage run odroid-gl4es.
* Dropped mainline kernel xfce image since that kernel can be installed from
  the repo.
* Latest software updates.

**Date - 20/08/2020**
* Added image with latest 4.9.230 kernel which has new overlay to always
  have fan running on N2+, and has updated wifi module driver.
* Added odroid-alsa package to the 4.9.230 image.

**Date - 05/08/2020**
* Added automatic resizing of system partition, generation of locales and
  setup of /etc/fstab
* Fixed booting from emmc module when sdcard is not present by properly
  setting up /etc/fstab
* Swapped kernel 4.9.10 with 5.7.10 for better rendering performance.

**Date - 27/07/2020**
* Swapped mainline kernel with hardkernel 4.9.230 g12 branch.
* Updated uboot to latest automatic travis build provided by hardkernel.
* Enabled kernel 4.9.230 modules as in official ubuntu image.
* Removed dkms-mali-bifrost since that driver is already built into kernel.
* Removed dkms-8812au driver which is also built into kernel.
* Modified odroid-n2-libgl-fb to not require dkms-mali-bifrost.
* Added latest GL4ES from git.

**Date - 19/05/2020**
* First release

## Wayfire

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
