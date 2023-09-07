tmpfile=$(mktemp)

echo "Starting ridgepole apply..." >> $tmpfile
echo "Apply Schemafile" >> $tmpfile
echo "[ERROR] Mysql2::Error: Invalid use of NULL value" >> $tmpfile
echo "Finished ridgepole apply." >> $tmpfile

# echo "RIDGEPOLE_APPLY_LOG=$(cat $tmpfile)" >> $GITHUB_OUTPUT

rm $tmpfile
