---
title: "Wayfire Image for Odroid N2/N2+"
---

# Wayfire Image for Odroid N2/N2+

Specific details about this environment setup can be see on the [Wayfire](/env/wayfire)
environment page.

### Distinct features from regular ALARM tarballs

* Linux kernel maintained by [@tobetter](https://github.com/tobetter) and other
  people with audio support, hdmi driver fixes, higher cpu frequncy support for
  the N2+ and other changes.
* U-Boot package with hooks to update boot.ini automatically if kernel is
  changed to non mainline which helps prevent bootup failures.
* More up to date mesa-devel package with more recent panfrost work for better
  graphics performance.

### Installation

The process of burning the image into a SD or EMMC is documented in
<https://wiki.odroid.com/troubleshooting/odroid_flashing_tools>.
The image doesn't boots from petitboot unless you have an updated petitboot
installed ([20200721](https://forum.odroid.com/viewtopic.php?f=182&t=33873)
release or newer seems to work) and compatible display (otherwise you will get
a blank screen), if not you will need to boot directly from emmc or sdcard.

### What Works?

Some of the graphic applications that have been tested and work nicely.

#### Triple A Games  :D

* OpenArena - `sudo pacman -S openarena`
* Cendric - `sudo pacman -S cendric-git`
* SuperTux - `sudo pacman -S supertux`
* MineTest - `sudo pacman -S minetest`
* Chromium B.S.U - `sudo pacman -S chromium-bsu`
* Neverball - `sudo pacman -S neverball`
* teeworlds - `sudo pacman -S teeworlds`
* supertuxkart - `sudo pacman -S supertuxkart`
* xonotic - `sudo pacman -S xonotic`

#### Video

* MPV with video acceleration - `sudo pacman -S mpv`
* KODI with opengl support - `sudo pacman -S kodi-x11`

#### Development

* CodeLite IDE for C/C++, PHP, NodeJS development - `sudo pacman -S codelite-git`
* CodeBlocks for C/C++ development - `sudo pacman -S codeblocks-svn`

### Changes Log

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
