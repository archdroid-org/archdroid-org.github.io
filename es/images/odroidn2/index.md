---
title: "Imagenes de Odroid N2/N2+"
---

# Imagenes de ArchLinuxARM para Odroid N2/N2+

El Odroid N2 y la nueva variante N2+ es una poderosa computadora de placa
única que tiene una CPU de 6 núcleos con velocidades desde 1.8Ghz a 2.4Ghz
para la variante N2+. Soporta hasta 4 GB de memoria ram, tiene adapter de
red integrado, Puertos USB 3 y 2, conector para tarjeta SD y EMMC así
como una GPU Mali 52 que cuenta con soporte de [Mesa OpenGL], lo que la
hace suficientemente poderosa para reemplazar una cumputadora de escritorio
y mucho más. Más detalles pueden ser vistos en la [Hardkernel wiki].

### Donde Comprar

* [Hardkernel]
* [Ameridroid]

### Imagenes

{% include archdroid/images-table.liquid id="odroidn2" %}

### Características adicionales del los archivos tar de ALARM

* Linux kernel matenido por [@tobetter] y otras personas con soporte de audio,
  arregos al controlador hdmi, soporte de frecuencias más altas para la cpu
  del N2+ y otros cambios.
* Paquete de U-boot con ganchos que actualizan el boot.ini automaticamente si
  un kernel distinto es instalado, lo que ayuda a prevenir fallos del inicio de
  sistema.
* Un paquete de mesa-devel mas actualizado con los cambios más recientes de
  panfrost para un mejor rendimiento gráfico en las imagenes que incluyen un
  entorno de escritorio.

### Instalación

El proceso de quemar la imagen a una SD o EMMC esta documentada en
<https://wiki.odroid.com/troubleshooting/odroid_flashing_tools>. Las imagenes
no inician directamente desde petitboot al menos que tenga una version actualizada
del mismo (la version [20200721] o mas nueva parece funcionar) y una pantalla
compatible (de otra manera solo se mostrará una pantalla negra). De no cumplir
con estos requisitos necesitará iniciar directamente desde la tarjeta SD o EMMC.

### Que Funciona?

Algunas de las aplicaciones gráficas que han sido probadas y funcionan
correctamente.

#### Juegos Triple A :D

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

* MPV con aceleración de video - `sudo pacman -S mpv`
* KODI con soporte de OpenGL - `sudo pacman -S kodi-wayland` o `sudo pacman -S kodi-x11`

#### Desarrollo

* CodeLite IDE para desarrollo C/C++, PHP y NodeJS - `sudo pacman -S codelite-git`
* CodeBlocks para desarrollo C/C++ - `sudo pacman -S codeblocks-svn`

### Mejorar el Rendimiento del Sistema

Si desea mejor rendimiento de su sistema puede tratar ejecutando
`sudo cpupower frequency-set -g performance` desde la terminal. Para hacer el
cambio completamente permanente puede configurar el gobernador de la CPU a modo
"performance" abriendo el archivo /etc/default/cpupower y cambiaando la línea que
lee de la siguiente manera:

```ini
governor='schedutil'
```
a
```ini
governor='performance'
```

Luego pudes ejecutar `sudo systemctl restart cpupower` para aplicar los cambios
de manera inmediata.

[@tobetter]: https://github.com/tobetter
[20200721]:  https://forum.odroid.com/viewtopic.php?f=182&t=33873
[Mesa OpenGL]:     https://mesa3d.org
[Hardkernel wiki]: https://wiki.odroid.com/odroid-n2/odroid-n2
[Hardkernel]:      https://www.hardkernel.com/
[Ameridroid]:      https://www.ameridroid.com/
