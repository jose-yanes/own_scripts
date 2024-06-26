#!/bin/bash

echo "###############################################"
echo "################## NOTE SYNC ##################"
echo "###############################################"

# Here it should grab the directories specified for the user
# from_directory and to_directory
# for now it will be hardcoded

#Checking for beaver notes
beaver_location=~/Documents/notes/

to_directory=~/backup_notes

if [ -d $beaver_location ]
then
	if [ -d $to_directory/notes ]
	then
		echo "Biever Backup found"
		cp -R $beaver_location $to_directory$(date "+%Y-%m-%d")
	else

		echo "Beaver File Found"
		echo "starting with backup"
		cp -R $beaver_location $to_directory
	fi
else
		echo "File not found"
fi


# Check for obsidian notes


echo 
echo "###############################################"
echo "################## FINISHED  ##################"
echo "###############################################"
