sleepy=1
COUNT="0"  
clear
echo ""

while true 
do
	COUNT=$(( COUNT + 1 ))

	case $COUNT in 
		"1") printf "%s\b\b\b\b\b\b\b\b\b\b\b\b""8===ooo=D   "
			sleep $sleepy
			;;
		"2") printf "%s\b\b\b\b\b\b\b\b\b\b\b\b""8==ooo==D   "
			sleep $sleepy
			;;
		"3") printf "%s\b\b\b\b\b\b\b\b\b\b\b\b""8===ooo=D   "
			sleep $sleepy
			;;
		"4") printf "%s\b\b\b\b\b\b\b\b\b\b\b\b""8==ooo==D   "
			sleep $sleepy
			;;
		"5") printf "%s\b\b\b\b\b\b\b\b\b\b\b\b""8=======D~~~"
			sleep $sleepy
			;;

		"6") printf "%s\b\b\b\b\b\b\b\b\b\b\b\b""8=======D   "
			sleep $sleepy
			;;
		"7") printf "%s\b\b\b\b\b\b\b\b\b\b\b\b""8=======D~~~"
			sleep $sleepy
			;;
		"8") printf "%s\b\b\b\b\b\b\b\b\b\b\b\b""8=======D   "
			sleep $sleepy
			;;
		"9") printf "%s\b\b\b\b\b\b\b\b\b\b\b\b""8=======D~~~"
			sleep $sleepy
			;;

		"10") printf "%s\b\b\b\b\b\b\b\b\b\b\b\b""8=======D   "
			sleep $sleepy
			;;
		"11") printf "%s\b\b\b\b\b\b\b\b\b\b\b\b""8=======D~~~"
			sleep $sleepy
			;;
		"12") printf "%s\b\b\b\b\b\b\b\b\b\b\b\b""8=======D   "
			sleep $sleepy
			;;
		*) COUNT="0" ;;
	esac
done
