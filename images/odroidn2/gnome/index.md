---
title: "GNOME Image for Odroid N2/N2+"
---

# GNOME Image for Odroid N2/N2+

[GNOME](https://gnome.org) is a modern and featureful desktop environment.

### What is Included?

* GNOME Desktop Environment.
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
* SSH Enabled.
* Bigger and more readable tty font.
* Installed archlinuxdroid-repo for easier kernel and custom package upgrades.
* Firefox with wayland support enabled. (see /etc/profile.d/)
* Realtime privileges enabled for alarm user for pro-audio.
* A nice space.jpg wallpaper!

#### Here are some basic screenshots:

<img class="img-fluid" src="{{ 'assets/img/gnome-ss01.jpg' | relative_url }}"/>

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

### Known Issues

#### The system automatically turns off

GNOME is set to sleep the device after a predefined amount of inactivity, to
prevent this disable the feature from the gnome control center / settings.

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

### Changes Log

**Date - 30/12/2020**
* A more lite-weight gnome install by using just the minimal amount of packages
  required to get gnome running.
* Swapped nautilus with thunar to reduce the amount of required dependencies.
* Disabled suspend on gnome by default to prevent issues for users without a
  physical power button.
* Disabled search services on gnome for better performance.
* Changed default color theme of gnome-terminal to more readable one.
* Added **CTRL + ALT + T** keyboard shortcut to launch the terminal.
* Improved initial setup script to not require a system reboot, so the system
  doesn't reboots anymore after reaching login manager.
* Includes kernel 5.10.2 with chewitt panfrost patches and tobetter patches.
* Recent build of mesa-arm-git which seems to have fixed some rendering issues
  on supertuxkart and have better performance.
* Updated pamac package which now includes hooks to fix appstream xml files.
* Default /boot/boot.ini now has the bootlabel set to "ArchLinux GNOME Lite"
  by the image generator.
* Enabled the dhcpcd systemd service.
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
* Blacklisted hid_logitech_hidpp which caused keyboard input to not work on
  Gnome for wireless logitech keyboards like the K400, K360, etc...
* Added MOZ_ENABLE_WAYLAND=1 environment variable to enable wayland on firefox
  by default.

**Date - 05/08/2020**
* First release
