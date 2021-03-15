---
title: "GNOME Desktop Environment"
---
[GNOME] is a modern and featureful desktop environment.
([Changes Log](/changes/env/#gnome))

### What is Included?

* Bluetooth
* Networking with NetworkManager
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

### Known Issues

##### The system automatically turns off

GNOME is set to sleep the device after a predefined amount of inactivity, to
prevent this disable the feature from the gnome control center / settings.

### Keyboard Bindings

Note: SuperKey is also known as WinKey

1. Press **SuperKey + a** to open the applications menu.
2. Press **SuperKey + t** to drop down the terminal
3. Press **SuperKey + f** to go into fullscreen for applications that support it
4. Press **SuperKey + q** to quit/close an application

For more bindings check the gnome settings.

[GNOME]: https://gnome.org
