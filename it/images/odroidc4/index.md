---
title: "Odroid C4/HC4 Images"
---

# Immagini ArchLinuxARM per Odroid C4/HC4

Odroid C4 e la variante HC4 sono dei computer a singola scheda economici e
di moderata potenza a 4 core, con una frequenza che arriva sino ai 2GHz.
Supportano fino a 4GB di RAM, scheda ethernet integrata, porte USB2 e USB3,
slot SDCard, slot EMMC e uno stack [Mesa OpenGL] per GPU Mali G31, rendendoli
abbastanza potenti da essere impiegati come piccoli desktop computer,
potenti NAS ed altro ancora. Ulteriori dettagli possono essere consultati
nelle wiki per [C4] e [HC4] di Hardkernel.

### Dove acquistare

* [Hardkernel]
* [Ameridroid]

### Immagini

{% include archdroid/images-table.liquid id = "odroidc4" %}

### Distinct features from regular ALARM tarballs

* Support for C4 and HC4.
* Linux kernel maintained by [@tobetter] and other people with audio support,
  hdmi driver fixes.
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

If you want better performance try running `sudo cpupower frequency-set -g
performance` from the terminal, and to permanently set the CPU governor to
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

[@tobetter]: https://github.com/tobetter
[Ameridroid]:  https://www.ameridroid.com/
[Hardkernel]:  https://www.hardkernel.com/
[C4]:          https://wiki.odroid.com/odroid-c4/odroid-c4
[HC4]:         https://wiki.odroid.com/odroid-hc4/odroid-hc4
[Mesa OpenGL]: https://mesa3d.org
