#!/bin/bash

tmpfile=$(mktemp)

echo "Starting ridgepole apply..." >> $tmpfile
echo "Apply /`Schemafile/`" >> $tmpfile
echo "-- create_table("internal_management_user_sessions", {:charset=>"utf8mb4", :collation=>"utf8mb4_general_ci"})" >> $tmpfile
echo "-> 0.2156s" >> $tmpfile
echo "-- add_index("internal_management_user_sessions", ["internal_management_user_id"], {:unique=>false, :name=>"idx_internal_management_user_sessions_1"})" >> $tmpfile
echo "-> 0.1132s" >> $tmpfile

HOGE_LOG=$(cat $tmpfile)

echo "Hoge log:"
echo "$HOGE_LOG"

curl -s -X POST -H 'Content-Type: application/json' \
    -d "{\"text\": \"$HOGE_LOG\"}" \
    $SLACK_WEBHOOK_URL

rm $tmpfile
