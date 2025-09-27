# Dolibarr Stock Alert

Script Bash che interroga il database di **Dolibarr** e invia una email di allerta quando uno o più prodotti scendono sotto la scorta minima configurata.

## Funzionalità

* Controllo automatico delle scorte minime dai prodotti Dolibarr
* Invio email di notifica a uno o più destinatari
* Configurabile tramite variabili esterne (`.env`)
* Pianificazione tramite cronjob (es. due volte al giorno)

---

## Requisiti

* MySQL client (`mysql`)
* mailutils o postfix/sendmail per l'invio email
* Accesso al database Dolibarr

---

## Installazione

> Nota: le credenziali mostrate nello script sono di esempio. Sostituirle con quelle reali del proprio database Dolibarr.

Clona il repository:

git clone https://github.com/TUO-UTENTE/dolibarr-stock-alert.git
cd dolibarr-stock-alert

Modifica direttamente lo script `check_stock_dolibarr.sh` con le tue credenziali:

```bash
DB_NAME="dolibarr"
DB_USER="YOUR-DB-USER"
DB_PASS="YOUR-DB-PASSWORD"
DB_HOST="localhost"
MAIL_TO="DESTINATION@EMAIL.COM,DESTINATION2@EMAIL.COM"

---

## Utilizzo

Esegui manualmente lo script:

```bash
bash check_stock_dolibarr.sh
```

Se ci sono prodotti sotto la scorta minima, riceverai una email con l’elenco.

---

## Automazione con cronjob

Puoi schedulare lo script per controlli automatici.
Ad esempio, alle 11:30 e alle 19:00:

```bash
crontab -e
```

Aggiungi la riga:

```
30 11,19 * * * /percorso/dolibarr-stock-alert/check_stock_dolibarr.sh
```

---

## Licenza

Distribuito sotto licenza **GNU GPL v2.0** – la stessa del kernel Linux.
Puoi modificare, ridistribuire e migliorare liberamente questo progetto.

---

## Contributi

Contributi e miglioramenti sono benvenuti.
Fai una fork del repository e proponi una pull request.
