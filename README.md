# Dolibarr Stock Alert

![License](https://img.shields.io/badge/License-GPL%20v2-blue)
![Bash](https://img.shields.io/badge/Script-Bash-orange)
![Cronjob](https://img.shields.io/badge/Cronjob-Scheduled-brightgreen)

Bash script che interroga il database di **Dolibarr** e invia una email di allerta quando uno o più prodotti scendono sotto la scorta minima configurata.

---

## Funzionalità

* Controllo automatico delle scorte minime dai prodotti Dolibarr
* Invio email di notifica a uno o più destinatari
* Configurabile direttamente nello script (`check_stock_dolibarr.sh`)
* Pianificazione tramite cronjob (es. due volte al giorno)

---

## Requisiti

* MySQL client (`mysql`)
* mailutils o postfix/sendmail per l'invio email
* Accesso al database Dolibarr
* Server con Bash disponibile

---

## Requisiti Modulo Dolibarr

Per usare questo script è necessario che il modulo **Prodotti/Stock** (Products/Stock) sia attivo in Dolibarr.  
Lo script legge i dati dei prodotti e dello stock dai seguenti moduli/dati:

- Prodotti (`llx_product`)  
- Magazzini/Stock (`llx_product_stock`)  

Assicurati che i prodotti abbiano impostata la **soglia minima** (`Seuil stock alerte`) per ricevere le notifiche.

---

## Installazione

> Nota: le credenziali mostrate nello script sono di esempio. Sostituirle con quelle reali del proprio database Dolibarr.

1. Clona il repository:

```bash
git clone https://github.com/killahop/dolibarr-stock-alert.git
cd dolibarr-stock-alert
```

2. Modifica direttamente lo script `check_stock_dolibarr.sh` con le tue credenziali:

```bash
DB_NAME="dolibarr"
DB_USER="YOUR-DB-USER"
DB_PASS="YOUR-DB-PASSWORD"
DB_HOST="localhost"
MAIL_TO="DESTINATION@EMAIL.COM,DESTINATION2@EMAIL.COM"
```

---

## Utilizzo

Esegui manualmente lo script:

```bash
bash check_stock_dolibarr.sh
```

Se ci sono prodotti sotto la scorta minima, riceverai una email con l’elenco.

---

## Automazione con cronjob

Puoi schedulare lo script per controlli automatici. Ad esempio, alle 11:30 e alle 19:00:

```bash
crontab -e
```

Aggiungi la riga:

```cron
30 11,19 * * * /percorso/dolibarr-stock-alert/check_stock_dolibarr.sh
```

---
## Donazioni

Se vuoi supportare lo sviluppo di Dolibarr Stock Alert, puoi fare una donazione tramite PayPal:

[Click qui per donare](https://www.paypal.com/donate/?hosted_button_id=VPSS3AQBPAVAS)

---

## Dolibarr Stock Alert (English)

Bash script that queries the **Dolibarr** database and sends an alert email when one or more products fall below the configured minimum stock.

---

## Features

* Automatic check of Dolibarr product minimum stocks
* Sends notification emails to one or more recipients
* Configurable directly in the script (`check_stock_dolibarr.sh`)
* Scheduling via cronjob (e.g., twice a day)

---

## Requirements

* MySQL client (`mysql`)
* mailutils or postfix/sendmail for sending emails
* Access to the Dolibarr database
* Bash shell available on the server

---

## Dolibarr Module Requirements

To use this script, the **Products/Stock** module must be active in Dolibarr.  
The script reads product and stock data from the following tables:

- Products (`llx_product`)  
- Warehouses/Stock (`llx_product_stock`)  

Make sure products have the **minimum stock threshold** (`Seuil stock alerte`) set to receive alerts.

---

## Installation

> Note: credentials shown in the script are examples. Replace them with your real Dolibarr database credentials.

1. Clone the repository:

```bash
git clone https://github.com/killahop/dolibarr-stock-alert.git
cd dolibarr-stock-alert
```

2. Edit the script `check_stock_dolibarr.sh` with your credentials:

```bash
DB_NAME="dolibarr"
DB_USER="YOUR-DB-USER"
DB_PASS="YOUR-DB-PASSWORD"
DB_HOST="localhost"
MAIL_TO="DESTINATION@EMAIL.COM,DESTINATION2@EMAIL.COM"
```

---

## Usage

Run the script manually:

```bash
bash check_stock_dolibarr.sh
```

If any product is below the minimum stock, you will receive an email with the list.

---

## Automate with cronjob

Schedule the script for automatic checks, e.g., at 11:30 and 19:00:

```bash
crontab -e
```

Add the line:

```cron
30 11,19 * * * /path/to/dolibarr-stock-alert/check_stock_dolibarr.sh
```

---

## License

Distributed under **GNU GPL v2.0** – the same as the Linux kernel.
You are free to modify, redistribute, and improve this project.

---

---
## Donations

If you want to support the development of Dolibarr Stock Alert, you can make a donation via PayPal:

[Click here to donate](https://www.paypal.com/donate/?hosted_button_id=VPSS3AQBPAVAS)

---

## Contributing

Contributions are welcome!

1. Fork the repository
2. Make your changes
3. Submit a pull request

## Donations

If you want to support the development of Dolibarr Stock Alert, you can make a donation via PayPal:

[Click here to donate](https://www.paypal.com/donate/?hosted_button_id=VPSS3AQBPAVAS)
