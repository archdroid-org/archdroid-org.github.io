---
title: "Entorno de Escritorio Wayfire"
---

# Entorno de Escritorio Wayfire

[Wayfire] es un entorno de escritorio liviano de Wayland comparable a Weston pero
con suficientes funcionalidades para hacerlo tuyo. Wayfire es como un Compiz
para Wayland pero completamente independiente. Además depende de muy pocos
recursos del sistema por lo que corre y funciona de maravilla.
([Historial de Cambios](/es/env/changes/#wayfire))

### Que está incluido?

* Gestor de inicio Lightdm con wayfire configurado como sesión predeterminada.
* Atajos de teclado preconfigurados para wayfire (Presione **SuperKey + c** para customizar).
* Reproductores de video MPV y VLC.
* Manejo de redes con NetworkManager
* Paquete cpupower preconfigurado.
* Asistente de AUR Yay.
* Centro de paquetes Pamac.
* Uso del tema de escritorio Arc y tema de iconos Papirus.
* SSH Activado.
* Mas grande y legible font de tty.
* Instalado archlinuxdroid-repo para fácil actualización de kernel y otros programas.
* Firefox con soporte de wayland activado. (ver /etc/profile.d/)
* Privilegios de tiempo real activados para el usuario alarm para pro-audio.
* Un bonito fondo del espacio (space.jpg)!

#### Algunas capturas de pantalla:

<img class="img-fluid" src="{{ 'assets/img/wayfire-ss01.jpg' | relative_url }}"/>

<img class="img-fluid" src="{{ 'assets/img/wayfire-ss02.jpg' | relative_url }}"/>

<img class="img-fluid" src="{{ 'assets/img/wayfire-ss03.jpg' | relative_url }}"/>

<img class="img-fluid" src="{{ 'assets/img/wayfire-ss04.jpg' | relative_url }}"/>

### Credenciales

**Usuario Regular:**
* usuario: alarm
* contraseña: alarm

**Administración:**
* usuario: root
* contraseña: root

En su primer inicio del sistema el asistente de configuracion le permitira
de manera sencilla el poder cambiar la contraseña predeterminada para mayor
seguridad.

### Configuración

Con la imagen más reciente, antes de iniciar al manejador de inicio de sesión
espere unos segundos por que el sistema agrandara la partición de archivos y
configurara el lenguaje, luego un asistente de configuración del sistema lo
guiará a completar la configuración. Asegurese de tener una pantalla conectada
antes de iniciar el sistema.

Para conectarse a una red wifi utilize el applet del network manager o abra
el terminal presionando **CTRL + ALT + t** y escriba `nmtui-connect`.

### Accesos de Teclado

Una lista de atajos de teclado puede ser vista inspeccionado el
**Wayfire Config Manager** el cual puede ejecutar con **SuperKey + c**, desde
el menu de aplicaciones o presionando **SuperKey + a** para ejecutar wofi
(similar a dmenu pero para Wayland) y escribiendo wcm. Aquí una referencia
parcial de atajos de teclado.

* SuperKey + a - abrir aplicación con wofi
* SuperKey + shift + a - ejecitar comando con bemenu
* SuperKey + c - wayfire config manager
* SuperKey + e - abrir el manejador de archivos
* SuperKey + t - bajar una terminal
* Ctrl + Alt + t - abrir ventana regular de terminal
* SuperKey + w - abrir firefox
* SuperKey + q - cerrar aplicaciones
* SuperKey + l - logout, shutdown, reboot, etc... con wlogout
* SuperKey + Numpad_# - diferentes atajos de posicionamiento de ventanas que hacen sentido
* SuperKey + ArrowKeys - Mover ventana a un espacio de trabajo distinto
* SuperKey + Alt + ArrowKeys - MOverse a otro espacio de trabajo
* SuperKey + f - cambiar una ventana a pantalla completa
* SuperKey + shift + f - forzar a escala una ventana a pantalla completa
* SuperKey + s - mostrar ventanas abiertas del espacio de trabajo actual
* SuperKey + shift + s - mostrar las ventanas abiertas de todos los espacios de trabajo
* SuperKey + MouseScroll - Zoom in o Zoom out
* SuperKey - Ver los espacios de trabajo

Estos son algunos de los atajos de teclado, recuerde que puede verlos todos en el
Wayfire Config Manager.

[Wayfire]: https://wayfire.org/
