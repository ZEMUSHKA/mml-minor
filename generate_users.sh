#!/bin/bash
for i in `seq 1 32`; do
    user="user$i"
    useradd -m $user # make the user
    pass=`openssl rand -hex 8` # generate random password
    echo "$user:$pass" | chpasswd # set the password
    echo "$user $pass" >> passwords
done