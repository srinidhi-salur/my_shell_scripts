#!/bin/bash 
PS4='+ ${BASH_SOURCE}:${LINENO}:${FUNCNAME[0]}()'
debug()
{
   echo "Executing: $@"
   $@
}

debug ls
#!bin/bash -v
set -x
test_var=1
ls "not/here"
echo $test_var
set +x

#dos2unix debugging2.sh -->to remove any carriage returns while pasting from windows editor linux
#file debugging2.sh-->to verify for the presence of CR
