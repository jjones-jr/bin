#!/bin/bash
#

#set -x

# brute force search of directory containing TLL files.  Not so efficient.
#find . -name "*.xml" -print | xargs grep -i $@ | egrep -o TLLXMK_'[0-9]+'.xml


#for f in *.xml; do xmlstarlet sel -t -v '//AllotmentBookingReport/RisaplsInformation/RisaplsCommonInformation/Basic/TelegramData' -n $f; done



declare -A files
#declare -i counter

#shopt -s nullglob


files=$(find . -name "*.xml" -print | xargs grep -i $@ | egrep -o TLLXMK_'[0-9]+'.xml)


# returns a string of ' ' space-separated values
# these values are to be added to a list of filenames tracked for each customer object.







echo $files





#for f in $files ; do echo ${files[$f]}; done







#command line, web, whatever


#algorithm design
#bash


#implementation:
#bash, python, node, whatever



#meta-table
#TravelAgencyBookingNumber

