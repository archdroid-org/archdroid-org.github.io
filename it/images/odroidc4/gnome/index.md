---
title: "GNOME Image for Odroid C4/HC4"
---

# GNOME Image for Odroid C4/HC4

Specific details about this environment setup can be seen on the
[Gnome](/env/gnome) environment page.

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

#### Triple A Games :D

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
