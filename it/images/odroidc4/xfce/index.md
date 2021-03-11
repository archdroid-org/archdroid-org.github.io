---
title: "XFCE Image for Odroid C4/HC4"
---

# XFCE Image for Odroid C4/HC4

Specific details about this environment setup can be seen on the
[XFCE](/env/xfce) environment page.

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
