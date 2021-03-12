---
title: "XFCE Changelog"
author: "jgmdev"
---
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
