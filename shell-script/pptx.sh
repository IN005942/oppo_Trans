#!/bin/bash
# This script is used to convert .ppt file to .pptx 
#OWNER:SRINIVASULU.ANNAM 
set -x
pptfile=$1
parm=pptx

# find the empty PPT file
if [ -z "$pptfile" ];
then
  echo "No PPT name detected."
else
  pptfile="$1"
fi ;
pptfile ()
{
  echo " -v, --verbose"
  echo " -h, --help"
  exit 1
}

# echo error with usage
Test ()
{
        echo " "
        echo "ERROR: $1"
        pptfile
}
libreoffice --headless --convert-to $parm $1
#for i in ${parm}
#do 
#    /bin/bash $parm
#done

#To check the libreoffice is installed or not 

if [ $? -eq 0 ]; then
   echo"command executed successfully"
else
   echo"pls check libreoffice installed or not"
fi;
