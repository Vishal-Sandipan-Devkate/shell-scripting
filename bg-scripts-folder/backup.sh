#!/usr/bin/env bash

# Author :- Vishal Devkate
# Description :- 

SOURCE="/home/vishaldevkate/Documents"
DEST="/home/vishaldevkate/backup"

if [ ! -d "$SOURCE" ]
then 
	echo "Source directory not found"
	exit 1
fi

DATE=$(date +%Y-%m-%d-%H-%M-%S)
mkdir -p $DEST

tar -czf "$DEST/backup_$DATE.tar.gz" "$SOURCE"
# tar- Archive tool
# -c - create
# -z - compress
# -f - filename

echo "Backup completed: backup-$DATE.tar.gz"

cd "$DEST" || exit # prevents Scriot from running in wrong directory

old_files=$(ls -t | tail -n +6)

for file in $old_files # Loop over files
do
	rm -v "$file"
done

echo "Only letest 5 backup are kept"


# Avoid ls -use the following for beat practice
# $(find "$DEST" -type f -name "*.tar.gz" | sort -r | tail -n +6 | xargs rm -v)
