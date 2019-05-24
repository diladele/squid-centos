How to Update Squid 4.6 with Web Safety 7.0 running on CentOS 7
===============================================================

Assuming you have rebuilt Squid 4.6 with fix for negotiate wrapper and have RPMs at your disposal you now need to update Web Safety nodes. First we will need to uninstall the current Squid package by running the following commands as root.

    systemctl stop squid
    rpm -e squid-helpers
    rpm -e squid
    reboot

Next step is to upload RPMs from build machine to this given Web Safety node. If you are ok with using what we have rebuilt in our test lab, run the following commands instead.

    wget https://github.com/diladele/squid-centos/raw/master/src/centos7/scripts.squid4/RPMS/x86_64/squid-4.6-1.el7.x86_64.rpm
    wget https://github.com/diladele/squid-centos/raw/master/src/centos7/scripts.squid4/RPMS/x86_64/squid-helpers-4.6-1.el7.x86_64.rpm

Install new packages RPM packages.

    rpm -i squid-4.6-1.el7.x86_64.rpm
    rpm -i squid-helpers-4.6-1.el7.x86_64.rpm

And restore configuration.

    cp /etc/squid/squid.conf.rpmsave  /etc/squid/squid.conf
    chmod 644 /etc/squid/squid.conf

Final step is to reboot the Web Safety node and see if negotiate errors go away and also see if the filtering works.






