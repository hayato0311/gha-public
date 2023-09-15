tmpfile=$(mktemp)

echo "Starting ridgepole apply..." >> $tmpfile
echo "Apply Schemafile" >> $tmpfile
echo "[ERROR] Mysql2::Error: Invalid use of NULL value" >> $tmpfile
echo "Finished ridgepole apply." >> $tmpfile

RIDGEPOLE_APPLY_LOG=$(cat $tmpfile)

curl -s -X POST -H 'Content-Type: application/json' \
      -d "{\"text\":\"$RIDGEPOLE_APPLY_LOG\",\"icon_emoji\":\":release_shiyou:\"}" \
      $SLACK_WEBHOOK_URL

rm $tmpfile

tmpfile=$(mktemp)

echo "Starting ridgepole apply..." >> $tmpfile
echo "Apply Schemafile" >> $tmpfile
echo "-- create_table("projects", {:charset=>"utf8mb4", :collation=>"utf8mb4_general_ci"})" >> $tmpfile
echo "   -> 0.2954s" >> $tmpfile
echo "-- add_index("project_options", ["project_id"], {:unique=>true, :name=>"idx_project_option_1"})" >> $tmpfile
echo "   -> 0.1370s" >> $tmpfile
echo "-- add_foreign_key("project_options", "projects", {:name=>"fk_project_options_1"})" >> $tmpfile
echo "   -> 0.1370s" >> $tmpfile
echo "Finished ridgepole apply." >> $tmpfile

RIDGEPOLE_APPLY_LOG=$(cat $tmpfile)

curl -s -X POST -H 'Content-Type: application/json' \
      -d "{\"text\":\"$RIDGEPOLE_APPLY_LOG\",\"icon_emoji\":\":release_shiyou:\"}" \
      $SLACK_WEBHOOK_URL

rm $tmpfile


