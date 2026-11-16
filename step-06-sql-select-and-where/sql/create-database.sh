#!/bin/sh
# Rebuilds lessons.db from lessons.sql. Run it from this folder with: sh create-database.sh
set -eu
rm -f lessons.db
sqlite3 lessons.db < lessons.sql
sqlite3 -header -column lessons.db "SELECT COUNT(*) AS lessons FROM lessons;"
