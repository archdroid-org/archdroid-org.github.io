---
title: "Wayfire Desktop Environment"
---

# Wayfire Desktop Environment

[Wayfire](https://wayfire.org/) is a lightweight Wayland desktop environment
comparable to Weston but with much more features that actually make it yours,
Wayfire is like the Compiz for Wayland but completely stand alone. Also since
it is lite in resources it runs lovely.

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

That is are some of the bindings, you can see them all on the Wayfire Config Manager.

### Changes Log

**Date - 24/02/2021**
* Reverted from pipewire to pulseaudio because of issues with newest pipewire
  and some built-in audio drivers when starting the system up.

**Date - 09/02/2021**
* Added first boot setup wizard that guides you thru setting timezone, locale,
  hostname, passwords, keyboard, etc...
* Updated to latest [wayfire 0.7](https://wayfire.org/2021/01/29/Wayfire-0-7.html)
  which includes performance improvements and new protocol additions.
* Added [waybar](https://github.com/Alexays/Waybar) as top panel with tray
  icons support and some other customization's.
* Case insensitive search on wofi app launcher.
* Enabled network manager connection applet thanks to waybar.
* Removed gnome-control-center
* Switched from gdm to lightdm
* Dropped weston and gtk-shell.
* Moved wf-panel to bottom, enabled window-list,
  [patched wf-panel](https://github.com/jgmdev/wf-shell/commits/wf-dock-icons)
  to show missing icons.
* Added osmo calendar and task management application when clicking the upper clock/date.
* Styled wlogout to match system theme and dropped lock, suspend and hibernate buttons.
* Added 8 seconds timeout to mako notifications.
* Swapped pulseaudio, alsa and jack with new all in one solution
  [PipeWire](https://pipewire.org).
* Added mugshot for simple user profile configuration.

**Date - 05/01/2021**
* Increased xfce4 dropdown terminal width to centralize better on the screen.
* Added [wl-color-picker](https://github.com/jgmdev/wl-color-picker)
  (use **Super + shift + p** to launch color picker)
* Replaced wayland-logout with wlogout for the app menu logout button which
  offers an interface to reboot, poweroff and logout.
* Added pamac-tray to wayfire startup so pamac-manager can detect packages
  that need to upgrade properly
* Enabled scale (Super + s or Super + shift + s) and workspace-names plugins.
* Added binding (Super + d) for wdisplays (wdisplays may have rendering bugs on panfrost).
* Styled the wofi launcher enabling app icons, 2 columns and more padding from icon to app title.
* Styled mako desktop notifications to better match the desktop theme.

**Date -31/12/2020**
* Updated wayfire to 0.6.0
* Swapped lxterminal with xfce4-terminal when pressing **CTRL + ALT + t** .
* Swapped connman to NetworkManager.
* Swapped greetd with gdm.
* Fixed applications not launching from menu because of missing dbus-session.
* **Super + a** now launches wofi and **Super + shift + a** bemenu

**Date - 03/08/2020**
* Replaced guake with xfce4-terminal for better drop-down terminal support.
* Added wf-dock to startup to enable wayfire bottom app panel.
* Set virtual workspace size to 3x3.
* Added space wallpaper as a skydome texture for the wayfire cube plugin.
* Enable **Super+f** for fullscreen and **Shift+Super+f** for alternative forced fullscreen.
* Added latest pamac-aur, yay, wlroots-git, wayfire-git, etc...

