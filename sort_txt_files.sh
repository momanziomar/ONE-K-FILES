#!/bin/bash

#extension=.$2
files=$(ls -1 *.txt 2> /dev/null)

#This if statement will check if there is any output from the "ls" command before executing the other lines of code which may save resources and time otherwise it'll stop directly.
if [[ $files ]]; then
languages=$(ls *.txt|cut -d '-' -f1|uniq)

for language in $languages
do
echo "Creating directory: $language"
mkdir -p $language
done

for file in $files
do
mv $file $(echo $file|cut -d- -f1)/
done
else
echo -e "\nNothing To Do!\n"
exit
fi



# for file in $(ls *.txt);do folder=$(echo $file|cut -d- -f1) ;mv $file $folder/;done

# for file in $(ls *.txt);do folder=$(echo $file|sed 's/-.*//') ;mv $file $folder/;done

# for file in $(ls *.txt);do folder=$(echo $file|awk -F"-" '{print $1}') ;mv $file $folder/;done