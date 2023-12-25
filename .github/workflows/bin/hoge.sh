#!/bin/bash

tmpfile=$(mktemp)

echo "\"hoge\"" >> $tmpfile

HOGE_LOG=$(cat $tmpfile | sed "s/\"/'/g")

echo "Hoge log:"
echo "$HOGE_LOG"

curl -s -X POST -H 'Content-Type: application/json' \
    -d "{\"text\": \"$HOGE_LOG\"}" \
    $SLACK_WEBHOOK_URL

rm $tmpfile
