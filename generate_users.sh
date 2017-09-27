#!/bin/bash
echo "" > passwords
pass=`openssl rand -hex 6` # generate random password
for i in `seq 1 32`; do
    user="user$i"
    useradd -m $user # make the user
    echo "$user:$pass" | chpasswd # set the password
    echo "$user $pass" >> passwords
done