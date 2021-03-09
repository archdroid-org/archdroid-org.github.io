---
title: "XFCE Image for Odroid N2/N2+"
---

# XFCE Image for Odroid N2/N2+

Specific details about this environment setup can be see on the [XFCE](/env/xfce)
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
* KODI with opengl support - `sudo pacman -S kodi-x11`

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
