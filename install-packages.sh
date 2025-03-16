#!/bin/bash
ID=$(id-u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
TIME_STAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0.$TIME_STAMP.log"
 if [ $ID -ne 0 ]
 then
    echo "you have to be root user"
else
    echo "you are root user"
fi

VALIDATE(){
if [ $1 -ne 0 ]
then
    echo"$2....is $R FAILED $N"
else
    echo"$2...is $G SUCCESS $N"
fi
}

for package in $@
do
    yum list installed $package
    if [ $ID -ne 0 ]
    then
         yum install $package -y &>> $LOGFILE 
         VALIDATE $? "Installation of $package" 
    else
        echo -e "$package is already installed ... $Y SKIPPING $N"
    fi
done






