#!bin/bash 
#set -x --->prints tracing or debugging lines
hello()
{
  for name in $@
  do
     echo "Hello $name"
  done
  echo $3
  now
}
now()
{
   echo "now!"
}
hello srinidhi srihitha anu surya sai
echo $?#prints the return status of hello 
#function backup_file()
#{
#   if [ -f $1 ]
#   then
#      local BACK="/tmp/$(basename ${1}).$(date +%F).$$"
#      echo"Backing up $1 to ${BACK}"
#      cp $1 $BACK
#   else
#      return 1
#   fi
#}

#backup_file /etc/hosts
#if [ $? -eq 0 ]
#then
#   echo "Backup succeeded!"
#else
#   echo "Backup failed!"
#   exit 1
#fi

read -p "Enter y or n:" ANSWER
case "$ANSWER" in
   [yY]|[yY][eE][Ss])
       echo "you answered yes."
       ;;
   [nN]|[Nn][Oo])
       echo "You answered no."
       ;;
   *)
       echo "Invalid answer."
       ;;
esac
#set +x -->stops debugging
