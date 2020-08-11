#!/bin/bash -x

echo "Welcome to login page"
read -p "First Name:" fname
read -p "Last Name:" lname
read -p "Email:" email
read -p "Mobile:" mobile
read -p "Password:" pass
namepat="^[A-Z]{1}[a-zA-Z]{2,}$"
emailpat="^[0-9a-zA-Z]+(.[0-9a-zA-z]+)*@[0-9a-zA-Z]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2})*$"
mobilepat="^[0-9]{2}[ ][0-9]{10}$"
passpat="^[a-zA-Z]{8,}"
if [[ $fname =~ $namepat && $lname =~ $namepat && $email =~ $emailpat && $mobile =~ $mobilepat && $pass =~ $passpat ]]
then
        echo "Welcome "$fname" "$lname
else
        echo "Sorry, Incorrect User Detail(s)"
fi
