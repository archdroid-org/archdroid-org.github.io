---
title: "Headless Image for Odroid N2/N2+"
---

# Headless Image for Odroid N2/N2+

Specific details about this environment setup can be see on the
[Headkess](/env/headless) environment page.

### Distinct features from regular ALARM tarballs

* Linux kernel maintained by [@tobetter](https://github.com/tobetter) and other
  people with audio support, hdmi driver fixes, higher cpu frequncy support for
  the N2+ and other changes.
* U-Boot package with hooks to update boot.ini automatically if kernel is
  changed to non mainline which helps prevent bootup failures.

### Installation

The process of burning the image into a SD or EMMC is documented in
<https://wiki.odroid.com/troubleshooting/odroid_flashing_tools>.
The image doesn't boots from petitboot unless you have an updated petitboot
installed ([20200721](https://forum.odroid.com/viewtopic.php?f=182&t=33873)
release or newer seems to work) and compatible display (otherwise you will get
a blank screen), if not you will need to boot directly from emmc or sdcard.

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

Then you can just run `sudo systemctl restart cpupower` to apply the changes
immediately.

### Changes Log

**Date - 30/12/2020**
* First release
