---
title: "XFCE Image for Odroid N2/N2+"
author: "jgmdev"
date: "2020-05-05T7:27:24-0400"
---

### What is Included?

* Latest XFCE Desktop Environment.
* 4.9.x Kernel with audio and N2+ support or 5.10.x Kernel on the panfrost image
* Mali GPU Kernel Driver or on panfrost image updateable mesa from git with bifrost support.
* Non-panfrost image: binary FBDEV driver for Hardware Acceleration. Thanks to @tobetter for instructions
* Non-panfrost image: GL4ES for OpenGL to OpenGL ES FBDEV conversion which allows many applications to run with good graphical performance. Thanks to @meveric for instructions.
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

The process of burning the image into a SD or EMMC card should be the same as
with other images and is well documented in
<https://wiki.odroid.com/troubleshooting/odroid_flashing_tools>
so I will not write about that. Besides that, the image doesn't boots from
petitboot unless you have an updated petitboot installed (20200721 release
seems to work) and compatible display (otherwise you will get a blank screen),
if not you will need to boot directly from emmc or sdcard.

**Login Credentials:**
username: alarm
password: alarm

**Administration:**
username: root
password: root

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

* OpenArena - sudo pacman -S openarena
* Cendric - sudo pacman -S cendric-git
* SuperTux - sudo pacman -S supertux
* MineTest - sudo pacman -S minetest
* Chromium B.S.U - sudo pacman -S chromium-bsu
* Neverball - sudo yay -S neverball

**on panfrost based image only**

* teeworlds - sudo pacman -S teeworlds
* supertuxkart - sudo pacman -S supertuxkart

and more...

#### Video

* MPV - with video acceleration on panfrost image or sdl backend on non-panfrost image.
* KODI - with opengl and video acceleration support on panfrost image sudo pacman -S kodi-x11.

#### Development

codelite IDE for C/C++, PHP, NodeJS development sudo pacman -S codelite-git

#### More

For details on what tested applications support GPU Hardware Acceleration
check the Archlinux: X GPU Acceleration Guide, If you test more OpenGL
applications that work with GL4ES let me know to update the list.

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

### Download

**Newer panfrost based image:**

<https://mega.nz/file/zEkw2Jgb#R14x4WXDvMtn3QaVNHlYIe9bq25kZoH-ddxYGTS5jdM>

**Latest image with Kernel 4.9.x (supports built-in audio):**

<https://mega.nz/file/uYEWgDoA#qPK4xKSNwbF3cbEextjDsR5o5xHAeCL6lG6UEoZ2nMM>

