---
title: "Environments Changes Log"
---
The different available image environments changes log.

## GNOME

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
* Updated pamac package which now includes hooks to fix appstream xml files.
* Enabled the dhcpcd systemd service.

**Date - 05/08/2020**
* Blacklisted hid_logitech_hidpp which caused keyboard input to not work on
  Gnome for wireless logitech keyboards like the K400, K360, etc...
* Added MOZ_ENABLE_WAYLAND=1 environment variable to enable wayland on firefox
  by default.

## Headless

**Date - 30/12/2020**
* First release

## XFCE

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

## Wayfire

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
