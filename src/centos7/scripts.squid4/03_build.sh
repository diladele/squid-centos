#!/bin/bash

if [[ $EUID -eq 0 ]]; then
   echo "This script must NOT be run as root" 1>&2
   exit 1
fi

# drop the build folder
rm -R ~/rpmbuild

# from now on every error is fatal
set -e

# we will be working in a subfolder so make it
mkdir -p ~/rpmbuild

# set squid version to rebuild
source squid.ver

# get sources of squid RPM from third party repo (ideally we shall use CentOS 8 repo when available)
wget http://www1.ngtech.co.il/repo/centos/7/SRPMS/squid-${SQUID_PKG}.el7.src.rpm

# unpack the source package
rpm -i squid-${SQUID_PKG}.el7.src.rpm

# copy out the patch for negotiate wrapper and spec file
cp squid4.spec ~/rpmbuild/SPECS/squid4.spec
cp negotiate_wrapper.cc.patch ~/rpmbuild/SOURCES/negotiate_wrapper.cc.patch

# change into rpm build folder
pushd ~/rpmbuild/SPECS

# and build the package
rpmbuild -ba squid4.spec

# and revert
popd
