#!/bin/bash

source functions/dependencies
source functions/network_checks
host="www.google.com"

install_packages_deps inetutils-ping dnsutils curl

echo -ne ".::MENU - Networking Monitoring::.\n1) ip_check_status\n2) dns_check_status\n3) request_check_status\n-> "

read -r option
case $option in
	1)
	  ip_check_status $host;;
	2) 
	  dns_check_status $host;;
	3)
	  request_check_status $host;;
	*) 
	  echo "Invalid option!";;
esac
