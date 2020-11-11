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
echo "Please enter the username: "

read USERNAME

while echo "$USERNAME" | egrep -v "^[0-9]{5}$" > /dev/null 2>&1
do
	echo "You must enter a valid ZIP code - five digits only!"
	echo "Enter a five-digit ZIP code: "
	read ZIP
done
echo "Thank you"
