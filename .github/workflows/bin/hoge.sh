#!/bin/bash

tmpfile=$(mktemp)

echo "hoge\r\n" >> $tmpfile
echo "hoge" >> $tmpfile
echo "hoge" >> $tmpfile
echo "hoge" >> $tmpfile

HOGE_LOG=$(cat $tmpfile)

echo "Hoge log:"
echo "$HOGE_LOG"

curl -s -X POST -H 'Content-Type: application/json' \
    -d "{\"text\": \"$HOGE_LOG\"}" \
    $SLACK_WEBHOOK_URL

rm $tmpfile
