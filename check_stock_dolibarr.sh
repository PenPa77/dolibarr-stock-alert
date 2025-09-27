#!/bin/bash

# Configurazione DB
DB_NAME="dolibarr"
DB_USER="YOUR-DB-USER"
DB_PASS="YOUR-DB-PASSWORD"
DB_HOST="localhost"

# Email destinatario
MAIL_TO="DESTIONATION@EMAIL.COM,DESTINATTION2@EMAIL.COM"

# Query per prodotti sotto soglia
RESULT=$(mysql -u"$DB_USER" -p"$DB_PASS" -h"$DB_HOST" -D"$DB_NAME" -se "
SELECT CONCAT(p.ref, ' - ', p.label, ' | Stock: ', IFNULL(SUM(ps.reel),0), ' | Soglia: ', p.seuil_stock_alerte)
FROM llx_product p
LEFT JOIN llx_product_stock ps ON p.rowid = ps.fk_product
WHERE p.seuil_stock_alerte > 0
GROUP BY p.ref, p.label, p.seuil_stock_alerte
HAVING IFNULL(SUM(ps.reel),0) < p.seuil_stock_alerte;
")
if [ -n "$RESULT" ]; then
    echo -e "Attenzione, i seguenti prodotti sono sotto la scorta minima:\n\n$RESULT" \
    | mail -s "Allerta Scorte Dolibarr" -r "alert@playnation.it" "$MAIL_TO"
fi
