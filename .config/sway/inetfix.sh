#!/bin/bash

CON=$(nmcli c show --active | grep '([^ ]+) +([^ ]+) +wifi' -E | awk '{print $1}')
nmcli c down $CON
nmcli c up $CON
