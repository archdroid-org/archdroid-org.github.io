---
title: "XFCE Image for Odroid N2/N2+"
---

# XFCE Image for Odroid N2/N2+

[Xfce](https://xfce.org) is a lightweight desktop environment for UNIX-like
operating systems. It aims to be fast and low on system resources, while still
being visually appealing and user friendly.

### What is Included?

* XFCE Desktop Environment.
* Linux kernel maintained by [@tobetter](https://github.com/tobetter) and other
  people with audio support, hdmi driver fixes, higher cpu frequncy support for
  the N2+ and other changes.
* U-Boot package with hooks to update boot.ini automatically if kernel is
  changed to non mainline.
* Bluetooth
* Networking with NetworkManager
* Pre-configured cpupower with known working settings.
* Yay AUR helper.
* Pamac software center.
* Use of Arc desktop theme and Papirus icon theme by default.
* Pre-configured bindings that give XFCE tiling functionality (see Keyboard/Window Manager on System Settings).
* SSH Enabled.
* Bigger and more readable tty font.
* Installed archlinuxdroid-repo for easier kernel and custom package upgrades.
* Realtime privileges enabled for alarm user for pro-audio.
* A nice space.jpg wallpaper!

#### Here are some basic screenshots:

<img class="img-fluid" src="{{ 'assets/img/xfce-ss01.png' | relative_url }}"/>

**Software Center provided by Pamac**

<img class="img-fluid" src="{{ 'assets/img/xfce-ss02.png' | relative_url }}"/>

### Installation

The process of burning the image into a SD or EMMC is documented in
<https://wiki.odroid.com/troubleshooting/odroid_flashing_tools>.
The image doesn't boots from petitboot unless you have an updated petitboot
installed (20200721 release or newer seems to work) and compatible display
(otherwise you will get a blank screen), if not you will need to boot directly
from emmc or sdcard.

**Login Credentials:**
* username: alarm
* password: alarm

**Administration:**
* username: root
* password: root

Don't forget to change the default password for added security.

### Setup

With latest image, after booting to the login manager wait some seconds
because the system will grow the partition, setup locales, setup the boot
partition on /etc/fstab and reboot.

### Keyboard Bindings

Note: SuperKey is also known as WinKey

1. Press **SuperKey + a** to open the applications menu.
2. Press **SuperKey + t** to drop down the terminal
3. Press **SuperKey + f** to go into fullscreen for applications that support it
4. Press **SuperKey + q to** quit/close an application

For more bindings check the xfce settings.

### What Works?

Some applications that have been tested and work nicely.

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

Then you can just run sudo systemctl restart cpupower to apply the changes
immediately.
