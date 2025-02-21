#!/bin/bash

backup_systemd() {
    cp -r "/etc/systemd" "/tmp/systemd"
    cp -r "/etc/init.d" "/tmp/init.d"
}

restore_systemd() {
    rm -rf "/etc/systemd" "/etc/init.d"
    mv "/tmp/systemd" "/tmp/init.d" "/etc/"
}

backup_share() {
    mv "/usr/share/$1" "/tmp/$1"
}

restore_share() {
    mv "/tmp/$1" "/usr/share/$1"
}


set -ex
./package.sh install default.list
./package.sh install pkg.list
backup_share man
backup_share doc
backup_systemd
./package.sh purge pkg.list
restore_share man
restore_share doc
restore_systemd
./package.sh install default.list
