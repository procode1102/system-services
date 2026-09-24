#!/usr/bin/env bash

TS=$(date +"%Y%m%d-%H%M%S")
touch baseline/mac/mac-system-$TS.txt
touch baseline/mac/mac-ifconfig-$TS.txt
touch baseline/mac/mac-routes-$TS.txt
touch baseline/mac/mac-dns-$TS.txt
touch baseline/mac/mac-lsof-network-$TS.txt
touch baseline/mac/mac-tool-versions-$TS.txt

ls -l baseline/mac

sw_vers > baseline/mac/mac-system-$TS.txt
uname -a >> baseline/mac/mac-system-$TS.txt
ifconfig > baseline/mac/mac-ifconfig-$TS.txt
netstat -rn > baseline/mac/mac-routes-$TS.txt
scutil --dns > baseline/mac/mac-dns-$TS.txt
lsof -i -P -n > baseline/mac/mac-lsof-network-$TS.txt

{
  echo "Git:"
  git --version
  echo

  echo "Python:"
  python3 --version
  echo

  echo "nmap:"
  nmap --version | head -n 1
  echo

  echo "tcpdump:"
  tcpdump --version
} > baseline/mac/mac-tool-versions-$TS.txt
