#!/bin/bash
value=$( grep -ic "entry" /etc/hosts )
VSMCONTROLLER="vsm-controller"
host=$(hostname)

if [ $value -eq 0 ]
then
echo "
################ VSM host entry ######################

192.168.123.100 vsm-controller
192.168.123.101 vsm-node1
192.168.123.102 vsm-node2
192.168.123.103 vsm-node3

######################################################
" >> /etc/hosts
fi

useradd cephuser
echo 'cephuser:cephuser' | chpasswd
echo "cephuser ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers
systemctl stop ntpd
systemctl stop ntpdate
ntpdate 0.centos.pool.ntp.org > /dev/null 2> /dev/null
systemctl start ntpdate
systemctl start ntpd
yum install -y tree git epel-release
