#!/bin/bash
if["$color" == "black"]
	then
		 cp /opt/namit.html /var/www/html/index.html
		 httpd -DFOREGROUNF

	 elif  [ "$color"  == "red"  ]

	 then 
		 cp /opt/red.html  /var/www/html/index.html
		 httpd -DFOREGROUND

	 elif["$color" =="green"]
	 then 
		 cp /opt/green.html .var/www/html/index.html
		 httpd -DFOREGROUND

	 else 
		 echo "sorry no match"  > /var/www/html/index.html
		 httpd -DFOREGROUND
fi
