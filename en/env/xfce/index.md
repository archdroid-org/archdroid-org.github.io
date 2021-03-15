---
title: "XFCE Desktop Environment"
---

# XFCE Desktop Environment

[Xfce] is a lightweight desktop environment for UNIX-like operating systems.
It aims to be fast and low on system resources, while still
being visually appealing and user friendly.
([Changes Log](/en/env/changes/#xfce))

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

[Xfce]: https://xfce.org
