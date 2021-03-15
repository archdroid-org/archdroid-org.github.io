---
title: "Entorno Headless"
---

# Entorno Headless

Entorno mínimo con suficientes paquetes para ser fácilmente utilizada
inclusive en conexiones inalambricas.
([Historial de Cambios](/es/env/changes/#headless))

### Que está incluido?

* La mayoría de las herramientas para configurar una red incluyendo soporte de
  wifi (wifi-menu, netctl).
* Bluetooth
* Asistente de AUR Yay.
* SSH Activado.
* Mas grande y legible font de tty.
* Instalado archlinuxdroid-repo para fácil actualización de kernel y otros programas.
* Privilegios de tiempo real activados para el usuario alarm para pro-audio.

### Credenciales

**Usuario Regular:**
* usuario: alarm
* contraseña: alarm

**Administración:**
* usuario: root
* contraseña: root

En su primer inicio del sistema el asistente de configuración le permitirá
de manera sencilla el poder cambiar la contraseña predeterminada para mayor
seguridad.

### Configuración

Luego de iniciar el sistema y hacer inicio de usuario si no tiene un cable
de red y solo posee un adaptador usb de wifi, puede utilizar wifi-menu para
fácilmente configurar la conexión inalambrica:

```sh
# Siga las instrucciones de conexión en la pantalla
sudo wifi-menu

# Listar conexiones disponibles
netctl list

# Activar conexión wifi en el inicio de sistema
sudo netctl enable nombre-de-conexion-devolvido-por-netctl-list
```
