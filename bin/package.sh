#!/bin/bash

readonly _tmp="$(mktemp)"

prepare() {
    for v in "$@" ; do
        cat "$v" >> "$_tmp"
    done
}

install() {
    apt-get update
    apt-get install --no-install-recommends -y $(cat "$_tmp" | xargs)
    apt-get clean
    rm -rf /var/lib/apt/lists/*
}

purge() {
    set +e
    xargs -n 1 apt-get purge --auto-remove -y < "$_tmp"
    set -e
}


set -ex
readonly _cmd="$1"
shift
case "$_cmd" in
    install)
        prepare "$@"
        install
        ;;
    purge)
        prepare "$@"
        purge
        ;;
    *)
        exit 1
        ;;
esac
