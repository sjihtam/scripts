#!/bin/bash

# Make lists of installed packages and put them in directory "list". 
#mkdir list
mkdir backup
#apt list > ./list/apt_installed_$datum.txt
#echo "Made a list of all installed apt-packages"
#dpkg -l > ./list/dpkg_list_$datum.txt
#echo "Made a dpkg list"
#snap list > ./list/snap_list_$datum.txt
#echo "Made a list of all installed snap-packages"

# What to backup. 
backup_files="/home/sjihtam/School/jaar 3/Stage"

# Where to backup to.
dest="/home/sjihtam/School/backups/backup_$day"

# Create archive filename.
day=$(date +%d-%m-%y)
hostname=$(hostname -s)
archive_file="$hostname-$day.tgz"

# Check if files exist, if not: make backup
if [ -f ./backup/$archive_file ]; 
then
    echo "file bestaat al!"
else
    make_backup()
    echo "Hier wel"
fi

function make_backup () {
    # Print start status message.
    echo "Backing up $backup_files to $dest/$archive_file"
    date
    echo
    #Set timer
    
    # Backup the files using tar.
    tar czf $dest/$archive_file $backup_files
    # Print end status message.
    echo
    echo "Backup finished at:" 
    $day
}


    
# Long listing of files in $dest to check file sizes.
ls -lh $dest

