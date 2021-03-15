---
title: "Wayfire Desktop Environment"
---

# Wayfire Desktop Environment

[Wayfire] is a lightweight Wayland desktop environment
comparable to Weston but with much more features that actually make it yours,
Wayfire is like the Compiz for Wayland but completely stand alone. Also since
it is lite in resources it runs lovely.
([Changes Log](/en/env/changes/#wayfire))

### What is Included?

* Lightdm display manager with wayfire set as the default session.
* Bluetooth (blueman)
* Networking with NetworkManager
* Pre-configured cpupower.
* Yay AUR helper.
* Pamac software center.
* Use of Arc desktop theme and Papirus icon theme by default.
* Preconfigured Wayfire bindings (Press **SuperKey + c** to customize).
* SSH Enabled.
* Bigger and more readable tty font.
* MPV and VLC video players.
* A nice space.jpg wallpaper!

#### Here are some basic screenshots:

<img class="img-fluid" src="{{ 'assets/img/wayfire-ss01.jpg' | relative_url }}"/>

<img class="img-fluid" src="{{ 'assets/img/wayfire-ss02.jpg' | relative_url }}"/>

<img class="img-fluid" src="{{ 'assets/img/wayfire-ss03.jpg' | relative_url }}"/>

<img class="img-fluid" src="{{ 'assets/img/wayfire-ss04.jpg' | relative_url }}"/>

### Installation

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

Connect to a wifi network using the network manager tray applet or by opening
a terminal with **CTRL + ALT + t** and typing `nmtui-connect`.

### Keyboard Bindings

A list of keyboard bindings can be seen by inspecting the
**Wayfire Config Manager** which you can launch with **SuperKey + c**, from the
applications menu or by pressing **SuperKey + a** to launch wofi (similar to
dmenu but for Wayland) and typing wcm. Here is a partial bindings reference:

* SuperKey + a - open application with wofi
* SuperKey + shift + a - execute command with bemenu
* SuperKey + c - wayfire config manager
* SuperKey + e - launch file manager/explorer
* SuperKey + t - drop down terminal
* Ctrl + Alt + t - launch regular terminal
* SuperKey + w - launch firefox
* SuperKey + q - close an open application
* SuperKey + l - logout, shutdown, reboot, etc... with wlogout
* SuperKey + Numpad_# - different window positioning shortcuts that make sense
* SuperKey + ArrowKeys - Move window to different workspaces
* SuperKey + Alt + ArrowKeys - Move to different workspaces
* SuperKey + f - make window fullscreen
* SuperKey + shift + f - force scale a window into fullscreen
* SuperKey + s - show open windows of current workspace
* SuperKey + shift + s - show open windows on all workspace
* SuperKey + MouseScroll - Zoom in or Zoom out
* SuperKey - Workspaces View

These are some of the bindings, you can see them all on the Wayfire Config Manager.

[Wayfire]: https://wayfire.org/
