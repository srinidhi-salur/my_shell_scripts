#!bin/bash
for name in red black green
do
    echo "Color:$name"
done
for c in $@
do
   echo "command line arguments:$c"
done
#read -p "Enter a name: " USER
#echo "Name:$USER"
HOST="google.com"
ping -c 1 $HOST
if [ "$?" -eq "0" ]
then 
   echo "$HOST is reachable"
else
   echo "$HOST is unreachable"
fi

#ping -c 1 $HOST && echo "$HOST is reachable"   --> if msg is sent(exit status of ping cmd is zero) then echo stmt executes
#ping -c 1 $HOST || echo "$HOST is unreachable" --> if msg is not sent(exit status of ping cmd is non-zero) then echo stmt executes
#cp s1.txt s2.txt ; mv s1.txt s2.txt-->BOth gets executed irrespective of exit status


#ping -c 1 $HOST 
#if [ "$?" -ne "0" ]
#then 
#   echo "$HOST is reachable"
#   exit 0
#fi
#exit 2

#ping -c 1 google.com      
#echo $? -->EXIT STATUS 0
#ping -c 1 amazon.com.no
#echo $? -->2
#ping -c 1 -w 1 amazon.com
#echo $?  -->1

