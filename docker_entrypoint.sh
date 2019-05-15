#!/bin/sh
set -e

for i in `ansible-vault view /app/secrets.txt --vault-password-file=/vault_key` ; do export $i ; done

exec "$@"