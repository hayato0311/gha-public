#!/bin/bash

tmpfile=$(mktemp)

"hoge" >> $tmpfile
"hoge" >> $tmpfile
"hoge" >> $tmpfile
"hoge" >> $tmpfile

HOGE_LOG=$(cat $tmpfile)

echo "Ridgepole apply log:"
echo "$HOGE_LOG"

curl -s -X POST -H 'Content-Type: application/json' \
    -d "{\"text\": \"$HOGE_LOG\"}" \
    $SLACK_WEBHOOK_URL

rm $tmpfile
