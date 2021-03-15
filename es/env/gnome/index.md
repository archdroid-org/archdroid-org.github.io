---
title: "Entorno de Escritorio GNOME"
---

# Entorno de Escritorio GNOME

[GNOME] es un moderno y completo entorno de escritorio.
([Historial de Cambios](/changes/env/#gnome))

### Que está incluido?

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

<img class="img-fluid" src="{{ 'assets/img/gnome-ss01.jpg' | relative_url }}"/>

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

### Problemas Conocidos

##### El sistema automaticamente se apaga

GNOME esta configurado para dormir el dispositivo luego de un tiempo predeterminado
de inactividad, para prevenir esta situación puede desactivar la funcionalidad
desde el centro de control de GNOME.

### Accesos de Teclado

Nota: SuperKey es tambien conocida como WinKey

1. Presione **SuperKey + a** para abrir el menu de aplicaciones.
2. Presione **SuperKey + t** para bajar la terminal.
3. Presione **SuperKey + f** para activar modo pantalla completa en las aplicaciones que lo soporten.
4. Presione **SuperKey + q** para salir/cerrar una aplicación.

Para más atajos del teclado vea las configuraciones de GNOME.

[GNOME]: https://gnome.org
