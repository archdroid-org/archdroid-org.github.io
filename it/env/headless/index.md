---
title: "Ambiente Headless"
---
# Ambiente Headless

Immagine minimale con pacchetti sufficienti per usarla facilmente
anche da una connessione wireless.
([Registro Modifiche ](/en/env/changes/#headless))

### Cos'è incluso?

* La maggior parte degli strumenti per configurare facilmente la rete,
  incluso il supporto Wi-Fi (`wifi-menu`, `netctl`).
* Bluetooth
* Yay e AUR helper
* SSH abilitato
* Caratteri shell TTY più larghi e leggibili
* Pacchetto `archlinuxdroid-repo` preinstallato per aggiornamenti facilitati
  del kernel e dei pacchetti
* Realtime privileges preinstallato per applicazioni audio professionali

### Credenziali

**Utente normale:**
* nome utente: alarm
* password: alarm

**Amministratore:**
* nome utente: root
* password: root

Non dimenticare di modificare le password predefinite per una ulteriore sicurezza

### Impostazioni

Dopo l'avvio e l'accesso, se non si dispone di un cavo di rete collegato ma
solamente di un dongle wifi, è possibile utilizzare il menu wifi per configurare
facilmente la connessione wireless:

```sh
# Segui le istruzioni di connessione sullo schermo
sudo wifi-menu

# Elenca le connessioni disponibili
netctl list

# Abilita la connessione Wi-Fi al riavvio del sistema
sudo netctl enable __connection-name-returned-by-netctl-list__
```
