#!/bin/sh
# Git cannot store a read-only file or an empty folder, so this recreates both bugs after a clone.
set -eu
mkdir -p logs
touch logs/backup.log
chmod 644 backup.sh
chmod 444 logs/backup.log
ls -l backup.sh logs/backup.log
