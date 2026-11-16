#!/bin/sh
# Rebuilds shop.db from shop.sql. Run it from this folder with: sh create-database.sh
set -eu
rm -f shop.db
sqlite3 shop.db < shop.sql
sqlite3 -header -column shop.db "SELECT COUNT(*) AS products FROM products;"
