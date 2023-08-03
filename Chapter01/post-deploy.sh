#!/bin/bash
value=$( grep -ic "entry" /etc/hosts )
if [ $value -eq 0 ]
then
echo "
################ ceph-cookbook host entry ############

192.168.1.101 ceph-node1
192.168.1.102 ceph-node2
192.168.1.103 ceph-node3
192.168.1.104 ceph-node4
192.168.1.115 ceph-node5
192.168.1.116 ceph-node6
192.168.1.117 ceph-node7
192.168.1.118 ceph-node8

192.168.1.106 rgw-node1.cephcookbook.com rgw-node1
192.168.1.107 us-east-1.cephcookbook.com us-east-1 
192.168.1.108 us-west-1.cephcookbook.com us-west-1
192.168.1.110 client-node1
192.168.1.111 os-node1.cephcookbook.com os-node1
192.168.1.120 owncloud.cephcookbook.com owncloud

######################################################
" >> /etc/hosts
fi
if [ -e /etc/redhat-release ]
then
systemctl stop ntpd
systemctl stop ntpdate
ntpdate 0.centos.pool.ntp.org > /dev/null 2> /dev/null
systemctl start ntpdate
systemctl start ntpd

	if [ -e /etc/rc.d/init.d/ceph ]
	then
	service ceph restart mon > /dev/null 2> /dev/null
	fi

fi
