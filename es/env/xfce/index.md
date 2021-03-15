---
title: "Entorno de Escritorio XFCE"
---
[Xfce] es un entorno liviano de escritorio para sistemas operativos UNIX.
Su meta es ser rápido y depender de pocos recursos del sistema, manteniendo
una apariencia visualmente agradable y de uso fácil.
([Historial de Cambios](/changes/env/#xfce))

### Que está incluido?

* Atajos de teclado pre-configurados que le dan a XFCE funcionalidad "tiling"
  (vea Teclado/Manejo de Ventanas en las Configuraciones del Sitema)
* Bluetooth
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

<img class="img-fluid" src="{{ 'assets/img/xfce-ss01.png' | relative_url }}"/>

**Gestor de paquetes proveido por Pamac**

<img class="img-fluid" src="{{ 'assets/img/xfce-ss02.png' | relative_url }}"/>

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
espere unos segundos  por que el sistema agrandara la partición de archivos y
configurara el lenguaje, luego un asistente de configuración del sistema lo
guiará a completar la configuración. Asegurese de tener una pantalla conectada
antes de iniciar el sistema.

### Accesos de Teclado

Nota: SuperKey es tambien conocida como WinKey

1. Presione **SuperKey + a** para abrir el menu de aplicaciones.
2. Presione **SuperKey + t** para bajar la terminal.
3. Presione **SuperKey + f** para activar modo pantalla completa en las aplicaciones que lo soporten.
4. Presione **SuperKey + q** para salir/cerrar una aplicación.

Para más atajos del teclado vea las configuraciones de XFCE.

[Xfce]: https://xfce.org
