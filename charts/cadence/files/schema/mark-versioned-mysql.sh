#!/bin/sh
set -e

. "$(dirname "$0")/mysql-utils.sh"

wait_mysql_ready

mark_if_versioned "$DB_NAME"
if [ "$ES_ENABLED" = "false" ]; then
  mark_if_versioned "$DB_VISIBILITY_NAME"
fi
