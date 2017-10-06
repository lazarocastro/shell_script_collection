#!/bin/bash
# title: Remove Space and Accentuation
# date: 2017-10-06
# description: Script created to rename files that were
# created with space and accent on a file server.
#
# how to use:
# chmod +x remove_space.sh
# cd <directory you want to change>
# ~/remove_space.sh
#
# Note: You may need to run the script more than once.


# Remove Accentuation
find . -name "*" | sort -r | while read line; do newname=`echo "$line" | iconv -t 'ascii//TRANSLIT'`; mv "$line" "$newname"; done 2> /dev/null # If you want a log or see the progress, change "/dev/null" for "/tmp/accent_log.txt"

# Change " " space for "_" underline
find . -name "*" | sort -r | while read line; do mv "$line" "${line// /_}" ; done 2> /dev/null # If you want a log or see the progress, change "/dev/null" for "/tmp/underline_log.txt"
