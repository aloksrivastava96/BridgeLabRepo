#!/bin/bash -x

echo "Welcome to login page"
read -p "First Name:" fname
fnamepat="^[A-Z]{1}[a-zA-Z]{2,}$"
if [[ $fname =~ $fnamepat ]]
then
        echo "Welcome "$fname
else
        echo "Sorry, Incorrect User Detail(s)"
fi
