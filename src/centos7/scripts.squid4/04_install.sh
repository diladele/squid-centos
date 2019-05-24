#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# install required perl module
yum -y install perl-Crypt-OpenSSL-X509

# install rebuilt RPMs
rpm -i ../rpmbuild/RPMS/x86_64/squid-4.6-1.el7.x86_64.rpm
rpm -i ../rpmbuild/RPMS/x86_64/squid-helpers-4.6-1.el7.x86_64.rpm

# check your new squid works!
/usr/sbin/squid -v

# parse the default config
/usr/sbin/squid -k parse

