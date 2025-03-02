#!/bin/bash

# TL-SG105E LED On/Off via curl command
# Firmware Version	1.0.0 Build 20230214 Rel.63440
# Hardware Version	TL-SG105E 5.0


# Login
curl -s -o /dev/null -c /tmp/cookies.txt 'http://192.168.1.140/logon.cgi' \
	--data-raw 'username=admin&password=admin&cpassword=&logon=Login'
cat /tmp/cookies.txt
# LED Off
curl -s -o /dev/null -b /tmp/cookies.txt \
	'http://192.168.1.140/led_on_set.cgi?rd_led=0&led_cfg=Apply'
sleep 3
# LED On
curl -s -o /dev/null -b /tmp/cookies.txt \
	'http://192.168.1.140/led_on_set.cgi?rd_led=1&led_cfg=Apply'
