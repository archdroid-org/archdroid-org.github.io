---
title: "Immagini ArchLinuxARM per Odroid N2/N2+"
---
Odroid N2 e la variante N2+ sono dei potenti computer a singola scheda
a 6 core con una frequenza che parte da 1.8GHz fino a 2.4GHz per la variante.
Supportano fino a 4GB di RAM, scheda ethernet integrata, porte USB2 e USB3,
slot SDCard, slot EMMC e uno stack [Mesa OpenGL] per GPU Mali G52, rendendoli
abbastanza potenti da essere impiegati come desktop computer ed altro ancora.
Ulteriori dettagli possono essere consultati nella [wiki Hardkernel].

### Dove acquistare

* [Hardkernel]
* [Ameridroid]

### Immagini

{% include archdroid/images-table.liquid id = "odroidn2" %}

### Caratteristiche uniche rispetto alle tarball ALARM ufficiali

* Kernel Linux mantenuto da [@tobetter] e da altre persone per il supporto audio,
  correzioni dei driver hdmi, frequenza più elevata della CPU per N2+ e altro
  ancora.
* Pacchetto U-Boot con hook per aggiornare automaticamente boot.ini se il kernel
  viene modificato in non mainline, il che aiuta a prevenire errori di avvio.
* Pacchetti `mesa` (`mesa-devel` o `mesa-devel-git`) con panfrost più aggiornati
  e migliori prestazioni grafiche su immagini non headless.

### Installazione

Le istruzioni per installare una immagine su SD o EMMC sono documentate su
<https://wiki.odroid.com/troubleshooting/odroid_flashing_tools>.
Le immagini non si avviano da petitboot a meno che non sia installato un petitboot
aggiornato (la versione [20200721] o più recente sembra funzionare) e un display
compatibile (altrimenti verrà visualizzata una schermata nera), in caso contrario
sarà necessario eseguire l'avvio direttamente da EMMC o SD card.

### Cosa funziona?

Alcune delle applicazioni grafiche che sono state testate.

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

* MPV con accelerazione grafica - `sudo pacman -S mpv`
* KODI con supporto OpenGL - `sudo pacman -S kodi-wayland` o `sudo pacman -S kodi-x11`

#### Sviluppo

* CodeLite IDE per lo sviluppo con C/C++, PHP e NodeJS - `sudo pacman -S codelite-git`
* CodeBlocks per lo sviluppo con C/C++ - `sudo pacman -S codeblocks-svn`

### Miglioramento delle prestazioni del sistema

Se desideri prestazioni migliori, prova ad eseguire
`sudo cpupower frequency-set -g performance` dal terminale.
Per renderlo permanente, imposta il governatore della CPU a performance applicando
le seguenti modifiche in `/etc/default/cpupower`:

da
```ini
governor='schedutil'
```
a
```ini
governor='performance'
```

Quindi riavvia il servizio con `sudo systemctl restart cpupower` per renderle
immediatamente effettive.

[@tobetter]:       https://github.com/tobetter
[20200721]:        https://forum.odroid.com/viewtopic.php?f=182&t=33873
[Ameridroid]:      https://www.ameridroid.com/
[Hardkernel]:      https://www.hardkernel.com/
[Mesa OpenGL]:     https://mesa3d.org
[wiki Hardkernel]: https://wiki.odroid.com/odroid-n2/odroid-n2
