#!/bin/sh
####################################
#
# Backup minecraft world to a
# specified folder.
#
####################################

# What to backup.  Name of minecraft folder in /opt
backup_files="minecraft"

# Specify which directory to backup to.
# Make sure you have enough space to hold 7 days of backups. This
# can be on the server itself, to an external hard drive or mounted network share.
# Warning: minecraft worlds can get fairly large so choose your backup destination accordingly.
dest="/home/opc/minecraftbackups"

# Create backup archive filename.
day=$(date +'%H')
archive_file="$day-$backup_files-.tar.gz"

# Backup the files using tar.
cd /home/opc && tar zcvf $dest/$archive_file $backup_files

