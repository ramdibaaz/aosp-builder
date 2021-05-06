#!/bin/bash

{
        date
        echo '++++++++NPROC++++++++'
        nproc
        free -h
        echo '++++++++IPINFO++++++++'
        curl ipinfo.io/?token=24b85fe6a8d2df
        echo
        echo '++++++++CCACHE++++++++'
        ccache -s || echo CCACHE NOT INSTALLED
        echo '++++++++STORAGE++++++++'
        df -h
        echo '++++++++H-TOP++++++++'
        top -b -i -H -n 1
        echo '++++++++SYSTEM++++++++'
        cat /etc/os*
        echo '++++++++ENV-stats++++++++'
        env
} >>./stats.md
