---
title: "Immagini ArchLinuxARM per Odroid C4/HC4"
---
Odroid C4 e la variante HC4 sono dei computer a singola scheda economici e
di moderata potenza a 4 core, con una frequenza che arriva sino ai 2GHz.
Supportano fino a 4GB di RAM, scheda ethernet integrata, porte USB2 e USB3,
slot SDCard, slot EMMC e uno stack [Mesa OpenGL] per GPU Mali G31, rendendoli
abbastanza potenti da essere impiegati come piccoli desktop computer,
potenti NAS ed altro ancora. Ulteriori dettagli possono essere consultati
nelle wiki per [C4] e [HC4] di Hardkernel.

### Dove acquistare

* [Hardkernel]
* [Ameridroid]

### Immagini

{% include archdroid/images-table.liquid id = "odroidc4" %}

### Caratteristiche uniche rispetto alle tarball ALARM ufficiali

* Supporto per C4 e HC4.
* Kernel Linux mantenuto da [@tobetter] e da altre persone per il supporto audio
  e correzioni dei driver hdmi.
* Pacchetto U-Boot con hook per aggiornare automaticamente boot.ini se il kernel
  viene modificato in non mainline, il che aiuta a prevenire errori di avvio.
* Pacchetti `mesa` (`mesa-devel` o `mesa-devel-git`) con panfrost più aggiornati
  e migliori prestazioni grafiche.

### Installazione

Le istruzioni per installare una immagine su SD o EMMC sono documentate su
<https://wiki.odroid.com/troubleshooting/odroid_flashing_tools>.

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

#### Video

* MPV con accelerazione grafica - `sudo pacman -S mpv`
* KODI con supporto OpenGL - `sudo pacman -S kodi-x11`

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

[@tobetter]:   https://github.com/tobetter
[Ameridroid]:  https://www.ameridroid.com/
[Hardkernel]:  https://www.hardkernel.com/
[C4]:          https://wiki.odroid.com/odroid-c4/odroid-c4
[HC4]:         https://wiki.odroid.com/odroid-hc4/odroid-hc4
[Mesa OpenGL]: https://mesa3d.org
