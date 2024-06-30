#!/bin/bash

echo "###############################################"
echo "################## NOTE SYNC ##################"
echo "###############################################"

#Checking for notes
beaver_location=~/Documents/notes/
obsidian_location=~/Documents/my_brain
to_directory=~/backup_notes

if [ ! -d $to_directory ]
then
	echo "Backup directory doesn't exists! creating and proceeding with backup!"
	mkdir $to_directory
else
	echo "Backup directory exists! proceeding with backup!"
fi

if [ -d $beaver_location ]
then
	rsync -av $beaver_location $to_directory/beaver$(date "+%Y-%m-%d")
else
	echo "Beaver File not found"
fi

if [ -d $obsidian_location ]
then
	rsync -av $obsidian_location $to_directory/obsidian$(date "+%Y-%m-%d")
else
	echo "Obsidian File not found"
fi


echo "###############################################"
echo "################## FINISHED  ##################"
echo "###############################################"
