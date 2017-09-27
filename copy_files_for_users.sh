#!/bin/bash
for i in `seq 1 32`; do
    user="user$i"
    for f in "$@"; do
        cp $f /home/$user/notebooks/
        chown $user:$user /home/$user/notebooks/$f
    done
    echo "$user done"
done