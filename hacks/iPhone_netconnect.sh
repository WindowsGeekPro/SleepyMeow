# To check if iPhone is connected to the network

## Enter IP Address
meow_ip=""

## Pinging
meow_ping=$(ping -c 1 $meow_ip | grep ttl | awk {'print $4'} | awk -F: {'print $1'})

## Setting up date format
meow_date=$(date +%d.%m.%Y_%H:%M)

## Checking if the phone is connected to the network or not
if[$meow_ping == $meow_ip]
	then
	echo "$meow_date" 'phone_is_connected' >> /d/codes/shell/meow_iphone.log
else
	echo "$meow_date" 'phone_is_not_connected' >> /d/codes/shell/meow_iphone.log
fi
