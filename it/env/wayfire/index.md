---
title: "Ambiente Desktop Wayfire"
---
# Ambiente Desktop Wayfire

[Wayfire] è un ambiente leggero basato su Wayland, paragonabile a Weston
ma con molte più funzionalità che lo rendono davvero tuo.
Wayfire è come un Compiz per Wayland, ma è completamente indipendente.
Inoltre, poiché non è esoso di risorse, funziona alla grande.

### Cos'è incluso?

* Display manager `lightdm` con `wayfire` preimpostato come gestore di sessione
* Bluetooth (`blueman`)
* Collegamento in rete con `NetworkManager`
* `cpupower` preimpostato
* Yay e AUR helper
* Centro software Pamac
* Temi Arc per il desktop e Papirus per le icone preimpostati
* Associazioni della tastiera per Wayfire preimpostati (Premi **SuperKey + c**
  per personalizzarli).
* SSH abilitato
* Caratteri shell TTY più larghi e leggibili
* Lettori video `MPV` e `VLC`
* Un piacevole sfondo: space.jpg!

#### Screenshot

<img class="img-fluid" src="{{ 'assets/img/wayfire-ss01.jpg' | relative_url }}"/>

<img class="img-fluid" src="{{ 'assets/img/wayfire-ss02.jpg' | relative_url }}"/>

<img class="img-fluid" src="{{ 'assets/img/wayfire-ss03.jpg' | relative_url }}"/>

<img class="img-fluid" src="{{ 'assets/img/wayfire-ss04.jpg' | relative_url }}"/>

### Installazione

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

Connettiti a una rete Wi-Fi utilizzando l'applet di `NetworkManager` nella systray
o aprendo un terminale premendo **CTRL + ALT + t** o digitando `nmtui-connect`.

### Associazioni della tastiera

Di seguito solo alcune principali associazioni, puoi trovarle tutte elencate nel
gestore di configurazione di Wayfire, avviandolo premendo **SuperKey + c**
dal menu delle applicazioni, o premendo **SuperKey + a** per avviare `wofi`
(simile a `dmenu` ma per Wayland) e digitando "wcm".

* **SuperKey + a** - apre una applicazione con `wofi`
* **SuperKey + shift + a** - esegui un comando con `bemenu`
* **SuperKey + c** - gestore di configurazione Wayfire
* **SuperKey + e** - avvia file manager/explorer
* **SuperKey + t** - terminale a discesa
* **Ctrl + Alt + t** - terminale normale
* **SuperKey + w** - avvia Firefox
* **SuperKey + q** - termina una applicazione
* **SuperKey + l** - termina sessione, spegnimento, riavvio, ecc... con `wlogout`
* **SuperKey + Numpad_#** - diverse scorciatoie di posizionamento delle finestre
* **SuperKey + ArrowKeys** - sposta la finestra in aree di lavoro diverse
* **SuperKey + Alt + ArrowKeys** - sposta in aree di lavoro diverse
* **SuperKey + f** - ingrandisce la finestra a schermo intero
* **SuperKey + shift + f** - forza la scala di una finestra a schermo intero
* **SuperKey + s** - mostra le finestre aperte dell'area di lavoro corrente
* **SuperKey + shift + s** - mostra le finestre aperte in tutte le aree di lavoro
* **SuperKey + MouseScroll** - Zoom avanti o Zoom indietro
* **SuperKey** - Workspaces View

[Wayfire]: https://wayfire.org/
