#!/usr/bin/env bash
##identifying vm details

cat /etc/redhat-release
uname -m
hostnamectl
ip addr
ip route
df -h
free -h
whoami
#sudo hostnamtctl set-hostname <hostname> - sets proper hostname
hostname -f

#can modify /etc/hosts to set a proper hostname
#can modify /etc/hostname to set a proper hostname

cat /etc/redhat-release
uname -r

# installing core admin tools
sudo dnf install -y bash-completion net-tools bind-utils \
wget curl nmap-ncat chrony \
policycoreutils-python-utils sysstat \
dnf-plugins-core

# enable and check status of a service
# sudo systemctl enable --now <service-name.d>
# sudo systemctl status <service-name.d> --no-pager

