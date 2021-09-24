#!/bin/sh

yum install centos-release-xen -y

yum upgrade kernel -y

echo 'net.core.default_qdisc=fq' | tee -a /etc/sysctl.conf

echo 'net.ipv4.tcp_congestion_control=bbr' | tee -a /etc/sysctl.conf

echo '#!/bin/sh' > /etc/profile.d/bbr_status.sh

echo 'lsmod | grep bbr' >> /etc/profile.d/bbr_status.sh

echo 'rm -rf /etc/profile.d/bbr_status.sh' >> /etc/profile.d/bbr_status.sh

sed -i "s/enabled=1/enabled=0/g" /etc/yum.repos.d/CentOS-Xen.repo

