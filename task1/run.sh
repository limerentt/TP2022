#!/bin/bash

for i in 1 2 3 4
do
case "$1" in
--INPUT_FOLDER) INPUT_FOLDER="$2";;
--EXTENSION) EXTENSION="$2";;
--BACKUP_FOLDER) BACKUP_FOLDER="$2";;
--BACKUP_ARCHIVE_NAME) BACKUP_ARCHIVE_NAME="$2";;
esac
shift
shift
done
echo $INPUT_FOLDER;
mkdir $BACKUP_FOLDER
find $INPUT_FOLDER -name "*.$EXTENSION" | xargs cp --parents -t $BACKUP_FOLDER
tar -czf $BACKUP_FOLDER/../$BACKUP_ARCHIVE_NAME $BACKUP_FOLDER 2>"/dev/null"
echo "done"
