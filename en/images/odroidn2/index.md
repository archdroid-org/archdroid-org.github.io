---
title: "Odroid N2/N2+ ArchLinuxARM Images"
---
The Odroid N2 and N2+ newer variant is a powerful single board computer that
has 6 cores clocking from 1.8Ghz up to 2.4Ghz for the N2+ variant. It supports
up to 4GB of ram, has integreted ethernet, USB 3 and USB 2 ports, SDCard slot,
EMMC slot and a [Mesa OpenGL] stack supported Mali G52 gpu, making it powerful
enough for usage as a desktop computer replacement and much more. More details
can be seen on the [Hardkernel wiki].

### Where to buy

* [Hardkernel]
* [Ameridroid]

### Images

{% include archdroid/images-table.liquid id="odroidn2" %}

### Distinct features from regular ALARM tarballs

* Linux kernel maintained by [@tobetter] and other people with audio support,
  hdmi driver fixes, higher cpu frequency support for
  the N2+ and other changes.
* U-Boot package with hooks to update boot.ini automatically if kernel is
  changed to non mainline which helps prevent bootup failures.
* More up to date `mesa` package (`mesa-devel` or `mesa-devel-git`) that includes
  the latest panfrost work for better graphics performance on non headless images.

### Installation

The process of burning the image into a SD or EMMC is documented in
<https://wiki.odroid.com/troubleshooting/odroid_flashing_tools>.
The images do not boot from petitboot unless you have an updated petitboot
installed ([20200721] release or newer seems to work) and compatible display
(otherwise you will get a blank screen), if not you will need to boot directly
from emmc or sdcard.

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
* KODI with opengl support - `sudo pacman -S kodi-wayland` or `sudo pacman -S kodi-x11`

#### Development

* CodeLite IDE for C/C++, PHP, NodeJS development - `sudo pacman -S codelite-git`
* CodeBlocks for C/C++ development - `sudo pacman -S codeblocks-svn`

### Improving System Performance

If you want better performance try running
`sudo cpupower frequency-set -g performance` from the terminal,
and to permanently set the CPU governor to performance open
`/etc/default/cpupower` and change the line that reads:

```ini
governor='schedutil'
```
to
```ini
governor='performance'
```

Then you can just run `sudo systemctl restart cpupower` to apply the changes
immediately.

[@tobetter]:       https://github.com/tobetter
[20200721]:        https://forum.odroid.com/viewtopic.php?f=182&t=33873
[Mesa OpenGL]:     https://mesa3d.org
[Hardkernel wiki]: https://wiki.odroid.com/odroid-n2/odroid-n2
[Hardkernel]:      https://www.hardkernel.com/
[Ameridroid]:      https://www.ameridroid.com/
