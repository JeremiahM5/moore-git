#!/bin/bash

#This is how the server will install these packages with command "./packages.sh"
#Make sure to chmod +x packages.sh to give it permissions so it can execute


yum install wget -y
yum install net-utils -y
yum install sysstat -y
yum install finger -y
yum install gcc -y
yum install make -y
yum install python3 -y
yum install epel-release -y
yum install git -y