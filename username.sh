#! /bin/bash
# username.sh
# Teresa Whitmore

echo "Enter a username. Please adhere to the following guidelines:"
echo "The only characters that can be used are:"
echo "     *lowercase letters"
echo "     *digits"
echo "     *underscore"
echo "Username must begin with a lowercase letter."
echo "Must contain between 3 and 12 characters."
echo "Please enter a username: "

read USERNAME

while echo "$USERNAME" | egrep -v "^[a-z][0-9a-z_.*]{3,12}$" > /dev/null 2>&1
do
	echo "You must enter a valid username - please follow the guidelines!"
	echo "Enter a username: "
	read USERNAME
done
echo "This username is valid. Thank you!"
