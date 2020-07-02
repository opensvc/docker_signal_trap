#!/bin/sh

function timestamp()
{
    echo -n "UTC $(date --utc "+%Y-%m-%d %H:%M:%S") "
}

function sighup_handler()
{
    timestamp
    echo "[SIGHUP] Signal 1 received"
}

function sigterm_handler()
{
    timestamp
    echo "[SIGTERM] Signal 15 received"
}

function sigusr1_handler()
{
    timestamp
    echo "[SIGUSR1] Signal 10 received"
}

trap 'sighup_handler' SIGHUP
trap 'sigterm_handler' SIGTERM
trap 'sigusr1_handler' SIGUSR1

while true
do
    sleep 1
done
