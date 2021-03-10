---
title: "GNOME Image for Odroid N2/N2+"
---

# GNOME Image for Odroid N2/N2+

Specific details about this environment setup can be seen on the
[Gnome](/env/gnome) environment page.

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

#### Triple A Games :D

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
* KODI with opengl support - `sudo pacman -S kodi-wayland`

#### Development

* CodeLite IDE for C/C++, PHP, NodeJS development - `sudo pacman -S codelite-git`
* CodeBlocks for C/C++ development - `sudo pacman -S codeblocks-svn`

### Improving System Performance

If you want better performance try running sudo cpupower frequency-set -g
performance from the terminal, and to permanently set the CPU governor to
performance open /etc/default/cpupower and change the line that reads:

```ini
governor='schedutil'
```
to
```ini
governor='performance'
```

Then you can just run `sudo systemctl restart cpupower` to apply the changes
immediately.

### Changes Log

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
