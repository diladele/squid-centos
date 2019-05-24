#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# install development packages required to rebuild squid package
yum install -y \
	rpm-build \
	wget \
	openldap-devel \
	pam-devel \
	openssl-devel \
	db4-devel \
	expat-devel \
	libxml2-devel \
	libcap-devel \
	libtool \
	libtool-ltdl-devel \
	libdb-devel \
	libnetfilter_conntrack-devel \
	gnutls-devel \
	gcc-c++
