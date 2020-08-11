#!/bin/bash -x

echo "Welcome to login page"
read -p "First Name:" fname
read -p "Last Name:" lname
namepat="^[A-Z]{1}[a-zA-Z]{2,}$"
if [[ $fname =~ $namepat && $lname =~ $namepat ]]
then
        echo "Welcome "$fname" "$lname
else
        echo "Sorry, Incorrect User Detail(s)"
fi
