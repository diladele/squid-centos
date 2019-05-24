Squid for CentOS
================

> Squid is a caching proxy for the Web supporting HTTP, HTTPS, FTP, and more. It reduces bandwidth and improves response times by caching and reusing frequently-requested web pages. Squid has extensive access controls and makes a great server accelerator. It runs on most available operating systems, including Windows and is licensed under the GNU GPL.
> <cite> <http://www.squid-cache.org>

This project provides scripts needed to recompile Squid on CentOS 7 with support for HTTPS filtering, SSL inspection and some custom patches to overcome issues and bugs found by intensive testing in the production.

**How to Use**
--------------

To rebuild the Squid 4 on your instance of CentOS 7, download scripts from src/centos7 folder to your target machine and run these one by one. Please note all scripts are run by root user except for 03_build.sh which must be run as normal user.

	# bash 01_update.sh
    # bash 02_tools.sh
    $ bash 03_build.sh
    # bash 04_install.sh
    
**Web Filter for Squid using ICAP**
-----------------------------------
In case you need a high quality HTTP(S) traffic filtering solution, take a look at our project - [**Web Safety**](https://www.diladele.com). 

Web Safety for Squid Proxy is an ICAP web filtering server that integrates with Squid proxy server and provides rich content and web filtering functionality to sanitize Internet traffic passing into an internal home/enterprise network. It may be used to block illegal or potentially malicious file downloads, remove annoying advertisements, prevent access to various categories of web sites and block resources with adult/explicit content.

To see it in action, have a look at [Virtual Appliance ESXi/Hyper-v](https://www.diladele.com/virtual_appliance.html), [deploy in Microsoft Azure](https://azuremarketplace.microsoft.com/en-us/marketplace/apps/diladele.websafety?tab=Overview) or [deploy in Amazon AWS](https://aws.amazon.com/marketplace/pp/B07KJHLHKC)

**Help**
--------

All questions/comments and suggestions are welcome at support@diladele.com or in Squid mailing list http://www.squid-cache.org/Support/mailing-lists.html. Squid documentation can be found at http://www.squid-cache.org

**Credits**
-----------
We admire people working on Squid Cache server, who spend their time free of charge and deliver great product to all of us.
