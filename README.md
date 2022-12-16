<h1 align="center">
 Born2beRoot [⚠️ In Development]
</h1>

<p align="center">
	<b><i>This project aims to introduce you to the wonderful world of virtualization.</i></b><br>
</p>

<p align="center">
	<img alt="GitHub code size in bytes" src="https://img.shields.io/github/languages/code-size/mewmewdevart/born2beroot?color=6272a4" />
	<img alt="Main language" src="https://img.shields.io/github/languages/top/mewmewdevart/born2beroot?color=6272a4"/>
	<img alt="License" src="https://img.shields.io/github/license/mewmewdevart/born2beroot?color=6272a4"/>
</p>

## 💡 About the project

> _The 42 project Born2beroot explores the fundamentals of system administration by inviting us to install and configure a virtual machine. By the end of this project, we will have learned about virtualization, partitioning schemes, LVM, command-line software, protocols such as SSH and the importance of securing a system thanks to sudo, firewalls and password policies. <br>
└── Keywords: `Network & system administration` 

### Instructions

**Pre-requisites**
* [Oracle VirtualBox](https://www.virtualbox.org/) (6.1.38 version)
* [Debian](https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/) (11.5.0 version)
* Enough free disk space.

**Files to turn in**
* [`signature.txt`](signature.txt)			- Using SHA1sum to verify the integrity of the operating system created in the virtual machine

### Partitions

```
NAME                    MAJ:MIN RM  SIZE RO TYPE  MOUNTPOINT   
sda                       8:0    0   10G  0 disk     
├─sda1                    8:1    0  476M  0 part  /boot   
├─sda2                    8:2    0    1K  0 part     
└─sda5                    8:5    0  9,5G  0 part     
  └─sda5_crypt          254:0    0  9,5G  0 crypt    
    ├─LVMGroup-root     254:1    0  3,2G  0 lvm   /   
    ├─LVMGroup-swap     254:2    0  740M  0 lvm   [SWAP]   
    ├─LVMGroup-home     254:3    0  1,6G  0 lvm   /home   
    ├─LVMGroup-var      254:4    0  968M  0 lvm   /var   
    ├─LVMGroup-srv      254:5    0  968M  0 lvm   /srv   
    ├─LVMGroup-tmp      254:6    0  968M  0 lvm   /tmp   
    └─LVMGroup-var--log 254:7    0  1,2G  0 lvm   /var/log   
sr0                      11:0    1 1024M  0 rom      
```

## 📋 Credits

* [Debian Guide](https://www.debian.org/releases/stable/installmanual)
* [Google](https://www.google.com/)
* [Vangoncalez, 42 Community](https://www.google.com/)

<p align="center"> Developed with love 💜 by Larissa Cristina Benedito (Mewmew/Larcrist). </p>
