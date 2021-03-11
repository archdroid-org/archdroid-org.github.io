---
title: "XFCE Desktop Environment"
---

# XFCE Desktop Environment

[Xfce](https://xfce.org) is a lightweight desktop environment for UNIX-like
operating systems. It aims to be fast and low on system resources, while still
being visually appealing and user friendly.

### What is Included?

* Bluetooth
* Networking with NetworkManager
* Pre-configured cpupower with known working settings.
* Yay AUR helper.
* Pamac software center.
* Use of Arc desktop theme and Papirus icon theme by default.
* Pre-configured bindings that give XFCE tiling functionality
  (see Keyboard/Window Manager on System Settings).
* SSH Enabled.
* Bigger and more readable tty font.
* Installed archlinuxdroid-repo for easier kernel and custom package upgrades.
* Realtime privileges enabled for alarm user for pro-audio.
* A nice space.jpg wallpaper!

#### Here are some basic screenshots:

<img class="img-fluid" src="{{ 'assets/img/xfce-ss01.png' | relative_url }}"/>

**Software Center provided by Pamac**

<img class="img-fluid" src="{{ 'assets/img/xfce-ss02.png' | relative_url }}"/>

### Credentials

**Regular user:**
* username: alarm
* password: alarm

**Administration:**
* username: root
* password: root

The first boot setup wizard will let you easily change the default passwords
for added security.

### Setup

With latest image, after booting to the login manager wait some seconds because
the system will grow the partition and setup locales, then a setup wizard will
guide you to finish system setup, so make sure to have a display connected
when booting the image.

### Keyboard Bindings

Note: SuperKey is also known as WinKey

1. Press **SuperKey + a** to open the applications menu.
2. Press **SuperKey + t** to drop down the terminal
3. Press **SuperKey + f** to go into fullscreen for applications that support it
4. Press **SuperKey + q to** quit/close an application

For more bindings check the xfce settings.

### Changes Log

**Date - 29/12/2020**
* Updated XFCE from 4.14 to 4.16
* Customized colors on newer CPU Graph XFCE plugin.
* Added default location to XFCE Weather plugin (can be changed by right
  click -> properties)
* Activated Arc-Dark theme globally and for window decorations.
* Replaced gcolor3 that broke support for X11 when non-GNOME with gcolor2
  which works properly.
* Added custom gcolor2.desktop to use more modern icon
  (~/.local/share/applications/gcolor2.desktop)
* Enabled the dhcpcd systemd service.
* Disabled compositing on XFCE for better OpenGL performance, also disabled
  transparency on whisker menu and bottom dock like panel.

**Date - 27/07/2020**
* Added latest pamac-aur, xfce4-places-plugin, xfce4-docklike-plugin-git.
* Added realtime privileges to alarm user for pro-audio.
