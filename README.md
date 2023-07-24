# ONE-K-FILES

## Getting Started
To execute the script please make sure to do the following:
  * `sort_txt_files.sh` script is in the txt files directory.
  * `sort_txt_files.sh` script is executable.

## To use the script from outside the txt files directory:
  * Change `files=$(ls -1 *.txt 2> /dev/null)` to `files=$(ls -1 path/*.txt 2> /dev/null)`

## To use the script for multiple directories and multiple file types other than .txt (Pass arguments):
  * Change `files=$(ls -1 *.txt 2> /dev/null)` to `files=$(ls -1 $1*.txt 2> /dev/null)` which `$1` will be the path you wish this script to be executed in, then the script must be executed as `./sort_txt_files.txt path/`.
  * To use the script for different file types and directories togother, for example `(.zip, .py, .png)`, Please uncomment the following variable `#extension=.$2` then replace every `.txt` in the script with $2 and then execute the script as the following `./sort_txt_files.txt path/ file_extension` for example: `./sort_txt_files.txt /tmp/ zip`, which `/tmp/` will be the `$1` argument and the `zip` will be the $2 argument.

## Other ways to get the same job done directly from the command line without a script:
  *  `for file in $(ls *.txt);do folder=$(echo $file|cut -d- -f1) ;mv $file $folder/;done`
  *  `for file in $(ls *.txt);do folder=$(echo $file|sed 's/-.*//') ;mv $file $folder/;done`
  *  `for file in $(ls *.txt);do folder=$(echo $file|awk -F"-" '{print $1}') ;mv $file $folder/;done`
  *  The above cut, sed, awk commands will do the same job which is taking the string before '-' charachter, these commands with their arguments could be helpful for any future use thats why each one of them is documented above, but from the result prespictive all of the commands will give the same result.

  
