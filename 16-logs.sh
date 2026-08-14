#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="$LOGS_FOLDER/$0.log"


# tee command shows output both on the screen and redirects to log file; -a to append
if [ $USERID -ne 0 ]; then
    echo "Please run this script with root user access" | tee -a $LOGS_FILE
    exit 1
fi

# -p to create if folder does not exist to avoid throwing error if exists
mkdir -p $LOGS_FOLDER

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "$2 ... FAILURE" | tee -a $LOGS_FILE
        exit 1
    else
        echo "$2 ... SUCCESS" | tee -a $LOGS_FILE
    fi
}

# &>> is to append everything i.e either output or error to the log file

dnf install nginx -y &>> $LOGS_FILE
VALIDATE $? "Installing Nginx"

dnf install mysql -y &>> $LOGS_FILE
VALIDATE $? "Installing Mysql"

dnf install nodejs -y &>> $LOGS_FILE
VALIDATE $? "Installing nodejs"