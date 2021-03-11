---
title: "Wayfire Image for Odroid C4/HC4"
---

# Wayfire Image for Odroid C4/HC4

Specific details about this environment setup can be seen on the
[Wayfire](/env/wayfire) environment page.

### Distinct features from regular ALARM tarballs

* Support for C4 and HC4.
* Linux kernel maintained by [@tobetter](https://github.com/tobetter) and other
  people with audio support, hdmi driver fixes.
* U-Boot package with hooks to update boot.ini automatically if kernel is
  changed to non mainline which helps prevent bootup failures.
* More up to date mesa-devel package with more recent panfrost work for better
  graphics performance.

### Installation

The process of burning the image into a SD or EMMC is documented in
<https://wiki.odroid.com/troubleshooting/odroid_flashing_tools>.

### What Works?

Some of the graphic applications that have been tested.

#### Triple A Games  :D

* OpenArena - `sudo pacman -S openarena`
* Cendric - `sudo pacman -S cendric-git`
* SuperTux - `sudo pacman -S supertux`
* MineTest - `sudo pacman -S minetest`
* Chromium B.S.U - `sudo pacman -S chromium-bsu`
* Neverball - `sudo pacman -S neverball`
* teeworlds - `sudo pacman -S teeworlds`
* supertuxkart - `sudo pacman -S supertuxkart`

#### Video

* MPV with video acceleration - `sudo pacman -S mpv`
* KODI with opengl support - `sudo pacman -S kodi-x11`

#### Development

* CodeLite IDE for C/C++, PHP, NodeJS development - `sudo pacman -S codelite-git`
* CodeBlocks for C/C++ development - `sudo pacman -S codeblocks-svn`

### Changes Log

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
