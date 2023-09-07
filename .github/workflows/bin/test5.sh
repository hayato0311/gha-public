tmpfile=$(mktemp)

echo "Starting ridgepole apply..." >> $tmpfile
echo "Apply Schemafile" >> $tmpfile
echo "[ERROR] Mysql2::Error: Invalid use of NULL value" >> $tmpfile
echo "Finished ridgepole apply." >> $tmpfile

RIDGEPOLE_APPLY_LOG=$(cat $tmpfile | sed 's/%/%25/g' | sed 's/\r/%0D/g' | sed 's/\n/%0A/g' | sed 's/`/%60/g' | sed 's/::/%3A%3A/g' | sed 's/" /%22/g' | sed 's/ /%20/g')

echo "$RIDGEPOLE_APPLY_LOG"

echo "RIDGEPOLE_APPLY_LOG=$RIDGEPOLE_APPLY_LOG" >> $GITHUB_OUTPUT

rm $tmpfile
