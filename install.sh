#!/usr/bin/bash

if [[ "$1" == "install" ]]
then
    echo "Installing network-wrapper"
    cp -rf ./network-wrapper ./dhcp-garbagecollection.sh /usr/bin/
    chmod +x /usr/bin/dhcp-garbagecollection.sh /usr/bin/network-wrapper
    touch /var/run/network-wrapper
    chmod 777 /var/run/network-wrapper
elif [[ "$1" == "uninstall" ]]
then
    echo "Uninstalling network-wrapper"
    rm -f /usr/bin/dhcp-garbagecollection.sh /usr/bin/network-wrapper
else
    echo "Usage:"
    echo "     $0 install => Install network-wrapper"
    echo "     $0 uninstall => Uninstall network-wrapper"
fi
