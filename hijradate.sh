#!/bin/bash
#
# --------------------------------
# Author: Moch Saiful Umam
# Author Blog: http://vpswp.blogspot.com
# Last Update : August 17, 2015
# --------------------------------
# This program create file .hijradatecurrent on your home directory which contain hijra date at this time.
# It needs internet connection, otherwise you will get Offline message. You can use it with conky
#
# Change Line 18 by visiting base URL below to search for Country/City
# http://www.islamicfinder.org/prayer_search.php#2

#!/bin/bash

echo -e "GET http://google.com HTTP/1.0\n\n" | nc google.com 80 > /dev/null 2>&1
if [ $? -eq 0 ]; then
	res=$(curl --silent "http://www.islamicfinder.org/prayer_service.php?country=indonesia&city=semarang&state=07&zipcode=&latitude=-7.0114&longitude=110.4111&timezone=7&HanfiShafi=1&pmethod=1&fajrTwilight1=10&fajrTwilight2=10&ishaTwilight=10&ishaInterval=30&dhuhrInterval=1&maghribInterval=1&dayLight=0&simpleFormat=xml")
	line=$(echo $res | sed ':a;N;$!ba;s/\n//g') 
	echo $line | sed -n -e 's/.*<hijri>\(.*\)<\/hijri>.*/\1/p' > .hijridatecurrent
else
	echo "Offline" > .hijridatecurrent
fi
