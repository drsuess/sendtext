#!/bin/bash
echo Enter number you wish to text without spaces or dashes
read NUM
if [ "${#NUM}" !=  "10" ]; then
	echo Phone number invalid. Please check again
else
	echo Now enter your message to send
	read MESSAGE
fi
curl http://textbelt.com/text -d number=$NUM -d "message=$MESSAGE"
echo Sent successfully!


