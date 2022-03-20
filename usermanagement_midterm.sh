#! /bin/bash

#Adding 2 users using for loop

for u in user1 user2;
do
sudo useradd -m $u
echo "$u:Password1" | sudo chpasswd
done
#Check whether 2 users were added or not?

sudo tail -n2 /etc/passwd

#Taking 2 inputs username and password

read -p "Enter the username : " USERNAME
read -p "Enter the password: " PASSWORD
#Validate the password so it should have 8 characters
echo
echo "Password should be 8 characters long otherwise no user will be created"
while read line;
read -p "ENter the username to be created: " USERNAME
read -p "Enter the password for the user: " PASSWORD
Count="${#PASSWORD}"
do
if [ "$Count" -ge 8 ]
then echo "HUrrah! Password is strong"
exit 1
else
echo "Opps!Try again weak password"
fi
done


sudo useradd $USERNAME
sudo usermod -p ${PASSWORD} ${USERNAME}

#Print new username and password

read -p  "Enter new username: " USERNEW
echo $USERNEW
read -p "Enter password: " PASS
echo $PASS

sudoadd useradd $USERNEW
sudo usermod -p ${PASS} ${USERNEW}
#  You can see the users by using this command
cat /etc/passwd
