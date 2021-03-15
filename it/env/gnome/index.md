---
title: "Ambiente Desktop GNOME"
---
# Ambiente Desktop GNOME

[GNOME] è un ambiente desktop moderno e ricco di funzionalità.
([Registro Modifiche ](/en/env/changes/#gnome))

### Cos'è incluso?

* Bluetooth
* Collegamento in rete con `NetworkManager`
* Yay e AUR helper
* Centro software Pamac
* Temi Arc per il desktop e Papirus per le icone preimpostati
* SSH abilitato
* Caratteri shell TTY più larghi e leggibili
* Pacchetto `archlinuxdroid-repo` preinstallato per aggiornamenti facilitati
  del kernel e dei pacchetti
* Firefox con supporto Wayland abilitato (vedi `/etc/profile.d/`)
* Realtime privileges preinstallato per applicazioni audio professionali
* Un piacevole sfondo: space.jpg!

#### Screenshot

<img class="img-fluid" src="{{ 'assets/img/gnome-ss01.jpg' | relative_url }}"/>

### Credenziali

**Utente normale:**
* nome utente: alarm
* password: alarm

**Amministratore:**
* nome utente: root
* password: root

Il wizard di installazione ti permetterà di modificare le password predefinite
per una ulteriore sicurezza.

### Impostazioni

Utilizzando immagini recenti, una volta visualizzato il gestore degli accessi,
attendere alcuni secondi, in quanto il sistema dovrà aumentare la dimensione
della partizione e preparare le impostazioni della lingua.
Successivamente un wizard ti guiderà a terminare le impostazioni di sistema,
quindi assicurati di aver collegato un display prima di avviare l'installazione.

### Problemi Noti

##### Il sistema si spegne automaticamente

GNOME è preimpostato per mettere in pausa il dispositivo dopo un tempo predefinito
di inattività. Per prevenire ciò, disabilitarne la funzione nelle impostazioni
o nel Centro di Controllo.

### Associazioni della tastiera

Nota: SuperKey è anche nota come WinKey

1. Premere **SuperKey + a** per aprire il menu delle applicazioni
2. Premere **SuperKey + t** per visualizzare il terminale a discesa
3. Premere **SuperKey + f** per visualizzare a pieno schermo
   le applicazioni che lo supportano
4. Premere **SuperKey + q** per chiudere le applicazioni

Per ulteriori associazioni fare riferimento alle impostazioni della tastiera
di GNOME.

[GNOME]: https://gnome.org
