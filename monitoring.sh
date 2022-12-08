#!/bin/bash

# ▼ My script must always be able to display the following information  ▼
# The architecture of my operating system and its kernel version.
ARCH=$(uname -a)

# The number of physical processors.
PCPU=$(grep 'physical id' /proc/cpuinfo | uniq | wc -l)

# The number of virtual processors.
VCPU=$(grep processor /proc/cpuinfo | uniq | wc -l)

# The current available memory on my server and its utilization rate as a percentage.
RAM_TOTAL=$(free -h | grep Mem | awk '{print $2}')
RAM_USED=$(free -h | grep Mem | awk '{print $3}')
RAM_PERC=$(free -k | grep Mem | awk '{printf(".2f%%"), $3 / $2 * 100}')

# The current utilization rate of my processors as a percentage.
DISK_TOTAL=$(df -h --total | grep total | awk '{print $2}')
DISK_USED=$(df -h --total | grep total | awk '{print $3}')
DISK_PERC=$(df -k --total | grep total | awk '{print $5}')

# The CPU Load of System
CPU_LOAD=$(top -bn1 | grep '^%Cpu' | cut -c 9- | xargs | awk '{printf("%.1f%%"), $1 + $3}')

# The date and time of the last reboot.
LAST_BOOT=$(who -b | awk -F" "'{printf $4}{printf(" ")}{printf $5}')

# Whether LVM is active or not.
LVM=$(if [ $(lsblk | grep lvm | wc -l) -eq 0 ]; then echo no; else echo yes; fi)

# The number of active connections.
TCP=$(grep TCP /proc/net/sockstat | awk '{print $3}')

# The number of users using the server.
USER_LOG=$(who | wc -l)

# The IPv4 address of my server and its MAC (Media Access Control) address.
IP_ADDR=$(hostname -I | awk '{print $1}')
MAC_ADDR=$(ip link show | grep link/ether | awk '{print $2}')

# The number of commands executed with the sudo program.
SUDO_LOG=$(grep COMMAND /var/log/sudo/sudo.log | wc -l)

wall " --------------------------------------------------
       Architecture    : $ARCH
       Physical CPUs   : $PCPU
       Virtual CPUs    : $VCPU
       Memory Usage    : $RAM_USED/$RAM_TOTAL ($RAM_PERC)
       Disk Usage      : $DISK_USED/$DISK_TOTAL ($DISK_PERC)
       CPU Load        : $CPU_LOAD
       Last Boot       : $LAST_BOOT
       LVM use         : $LVM
       TCP Connections : $TCP Established
       Users logged    : $USER_LOG
       Network         : IP $IP_ADDR ($MAC_ADDR)
       Sudo            : $SUDO_LOG Commands used
     ------------------------------------------------------"
