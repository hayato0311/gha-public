tmpfile=$(mktemp)

echo "Starting ridgepole apply..." >> $tmpfile
echo "Apply Schemafile" >> $tmpfile
echo "[ERROR] Mysql2::Error: Invalid use of NULL value" >> $tmpfile
echo "Finished ridgepole apply." >> $tmpfile

RIDGEPOLE_APPLY_LOG=$(cat $tmpfile)

echo $SLACK_WEBHOOK_URL

curl -s -X POST -H 'Content-Type: application/json' \
      -d "{\"text\":\"$RIDGEPOLE_APPLY_LOG\",\"icon_emoji\":\":release_shiyou:\"}" \
      $SLACK_WEBHOOK_URL

rm $tmpfile
